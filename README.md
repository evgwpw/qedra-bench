# qedra-bench

Reproducible run of **Qedra** over the public
[integration-test-suites](https://github.com/sympy/integration-test-suites) corpus
(80 873 indefinite and definite integrals in JSON Lines).

Only results produced by Qedra are published here. The corpus is cloned at run time and is
not copied into this repository; it keeps its own license and copyright.

## What is measured

For every corpus record the runner asks Qedra to integrate it (`qedra --json`, math language),
then checks the answer numerically and independently of the answer's form:

* indefinite: `|F′(x) − f(x)| ≤ 1e-8 · max(1, |f|)` at 13 real points (around 0, ±1, ±2) and
  2 complex points, for three sets of parameter values; `F′` comes from Qedra's own `diff`,
  values from `eval-num`;
* definite: the value is compared with the corpus `value`; on mismatch a Simpson quadrature
  of the integrand is used as a tie-breaker.

Verdicts: `OK`, `WRONG`, `UNVERIFIED` (the check could not be computed), `partial`
(`integrate` remains in the answer), `untranslated` (the record uses a function or construct
the input language does not have), plus the engine statuses `unknown`, `nonelementary`,
`FALSE-NE`, `TIMEOUT`, `ERROR`.

## Run

`bench.yml` (workflow dispatch):

| input | default | meaning |
|---|---|---|
| `qedra_ref` | `master` | Qedra git ref to build |
| `corpus_ref` | pinned commit | integration-test-suites commit |
| `suites` | all six | comma-separated suite names |
| `timeout_s` | `5` | per-task budget |
| `rubi_sample` | `10` | percent of rubi tasks (stratified by file) |
| `shards` | `20` | matrix size |

The first job publishes a self-contained `linux-x64` build of Qedra as an artifact; the matrix
runs `bench/run_suite.mjs` with `--shards/--shard`; the last job merges `results-<k>.jsonl.gz`
into `results/<date>-<qedra-sha>/` (`results.jsonl.gz`, `SUMMARY.md`) and commits it here.

Locally:

```
dotnet publish src/Lisp.Host/Lisp.Host.fsproj -c Release -r linux-x64 --self-contained -o out
git clone --depth 1 https://github.com/sympy/integration-test-suites corpus
QUOD_EXE=$PWD/out/Lisp CORPUS_DIR=$PWD/corpus/data \
  node bench/run_suite.mjs --suites independent --workers 4 --out results-local
```

Timeout: Qedra's `--json` has no per-request deadline. The pool keeps long-lived processes and
an external watchdog kills and restarts a process that does not answer within twice the budget;
that task is recorded as `TIMEOUT`.

## Layout

```
bench/run_suite.mjs   CLI, worker pool, shards, resume
bench/worker.mjs      one task: translation, integrate, classification
bench/lisp.mjs        qedra --json client (line protocol)
bench/translate.mjs   corpus syntax -> input language
bench/oracle.mjs      numeric check via diff + eval-num
bench/sexpr.mjs       S-expression parser for answers
bench/merge.mjs       merge shards, write results.jsonl.gz and SUMMARY.md
```

## License

0BSD, see `LICENSE`. Copyright (C) 2026 by Evgeniy Veprikov.

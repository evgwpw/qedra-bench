# lean/ci — workflow `lean` для `evgwpw/qedra-bench` (карточка L4)

Готовый комплект для отдельного репозитория `qedra-bench`. В `lisp` он лежит для версионирования:
пуш в `qedra-bench` делает координатор (в репозиторий `lisp` ничего из этого не публикуется, кроме копий).

## Состав

```
.github/workflows/lean.yml      workflow (workflow_dispatch: qedra_ref, source, shards, timeout_s)
tools/lean/gen-batch.mjs        упаковка N теорем в один .lean (копия research/lean/gen-batch.mjs,
                                отличается тем, что id берутся из lean/catalog)
tools/lean/check-batch.mjs      проверка пакета: статус по каждой теореме + аксиомы
tools/lean/summarize.mjs        сводка: results/lean-<дата>-<sha>/lean-results.jsonl + SUMMARY.md
tools/lean/setup/*              lean-toolchain, lakefile.lean, lake-manifest.json (пины версий)
```

## Установка

Скопировать содержимое `lean/ci/` в корень `qedra-bench` (сохранив пути), закоммитить, запустить
Actions → `lean` → Run workflow:

- `qedra_ref=rubi-pilot` (в снимке должен быть `lean/catalog/*.lean`; на 2026-11-12 он совпадает с
  каталогом ветки `ds/LEAN-L4`);
- `source=catalog`, `shards=4`, `timeout_s=900`.

Ожидаемый итог: `results/lean-<дата>-<sha>/SUMMARY.md` с `passed 50` и таблицей по осколкам.

## Что внутри важно помнить

- **Пакетирование**: шапка (`import`, `open Real`, вспомогательные леммы `qedra_rpow_half_*`) пишется один раз
  на пакет; шапки всех файлов каталога сверяются между собой — не совпали, упаковка запрещена.
- **Узкие импорты** (`--narrow`): таблица «голова ответа → модуль mathlib» вместо `import Mathlib`;
  локальный замер — 10,5–14,5 с на пакет против 15,7–19,8 с (−30 %), 50/50 passed.
- **Аксиомы**: `#print axioms` на каждую теорему; `passed` только при подмножестве
  `{propext, Classical.choice, Quot.sound}`, иначе `failed-axioms` со списком.
- **Кэш**: `qedra-lean/.lake` кэшируется по хешу `tools/lean/setup/lake-manifest.json` (олеаны mathlib
  ≈ 5 ГБ; лимит кэша репозитория 10 ГБ). Первый прогон — с `lake update mathlib` и `lake exe cache get`.
- **Подделки для приёмки П2**: (а) испортить первообразную в копии каталога — ждём `failed`;
  (б) заменить доказательство на `sorry` — `failed-axioms` (`sorryAx`); (в) вспомогательная лемма
  через `axiom` — `failed-axioms` с именем аксиомы.

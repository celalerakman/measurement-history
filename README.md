# Measurement History

Inspect running quantities across source measurement records.

A window function calculates per-item running totals. Record IDs break timestamp ties for a deterministic sequence.

## Run

The SQL runs on SQLite. The example runner needs Python 3.11 or newer.

```sh
python main.py
python -m unittest discover -s tests -v
```

`schema.sql` defines the source tables. `query.sql` contains the standalone query.
The example runner creates and closes an isolated in-memory database.

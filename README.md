# CSC494

### Testing Scripts

##### `domains/<domain-name>/generator.py`
Generates a problem instance for given parameter, or default set of problem instances.
```
python generator.py --dest-dir ./problems/
```

##### `run-all-planners`
Run all planners on given domain and problem instance, save result to `<problem-instance>-result.txt`
```
./run-all-planners <domain.pddl> <problem.pddl>
```

##### `iterate-problems`
Run all problem instances generated in /domains/<domain-name>/problems/, save all result in `testing/TEMP-RESULT`
```
./iterate-problems <domain-name>
```
##### `graph_result.py`
Graph performances v.s. problem size from parsing `result.txt`
```
python graph_result.py
```

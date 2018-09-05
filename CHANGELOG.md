# Release Notes

## 0.10.2 - 2018-08-31

### Fixes

* **operator-fetcher**: Local mounted path in operator fetcher

---

## 0.10.1 - 2018-08-31

### Improvements

* **gui-builder**: updated message returned to user in case of operator error
* **ikats-datamodel**: updated message returned to user in case of operator error
* **ikats-baseimages**: updated spark to 2.3.1
* **ikats-pybase**: updated spark to 2.3.1

### Fixes

* **gui-builder**: Changed frontEnd libraries import order to be used by viztools
* **ikats-baseimages**: fixed base images Spark Opentsdb not build for develop and master
* **ikats-datamodel**: traintestsplit operator: updated parameters
* **op-resampling**: changed upsampling VALUE_BEFORE or VALUE_AFTER behaviour on a single point chunk
* **op-ts_cut**: reworked unit test to match spark 2.3.1
* **vt-sax**: fixed to use the correct input name to know the source dataset

---

## 0.10.0 - 2018-07-30

### Improvements

* **gui-builder**: added TDT default viztool
* **ikats-datamodel**: changed funcId pattern to allow "-" in functional identifiers
* **ikats-pybase**: updated to handle `op-export_ts`
* **ikats-sandbox**: refactored import/export mount path
* **op-decision_tree**: applied new output format
* **op-decision_tree_cv**: applied new output format
* **op-export_ts**: created
* **op-ts_cut**: updated to use spark
* **operator-fetcher**: updated repo-list.yml with `op-export_ts`

### Fixes

* **gui-builder**: minor typo fix
* **ikats-datamodel**: added table API  V2 + headers management
* **ikats-pybase**: fixed versions for python modules
* **op-discretization**: fixed parameters order in catalog def
* **op-rollmean**: fixed API call
* **op-sax**: fixed API call
* **operator-fetcher**: fixed tables increment id forced to 1 at each restart
* **operator-fetcher**: refactored way to cache operators when no connection is available

---

## 0.9.0 - 2018-07-05

### Improvements

* **gui-builder**: default viztool displayed depending on output type
* **gui-builder**: updated families of core operators
* **ikats-sandbox**: added dependency between operator-fetcher and ikats-db
* **ikats-sandbox**: added shared volume for operators families
* **op-discretization**: updated family for operator discretize
* **operator-fetcher**: added catalog population during startup

### Fixes

* **ikats-pybase**: updated `Requests` python module to fix 'Connection pool is full'
* **operators**: fixed catalog def

---

## 0.8.0 - 2018-06-20

### Improvements

* **ikats-datamodel**: updated path to operators
* **ikats-pybase**: separated viztools and operators from the main code base
* **ikats-sandbox**: operator-fetcher linked to sandbox
* **ikats-sandbox**: updated docker-compose configuration
* **ikats-sandbox**: updated image to python base
* **ikats-sandbox**: updated with `gui-builder`
* **operator-fetcher**: created to handle operators to use in IKATS instance
* **gui-builder**: created to handle viztools to use in IKATS instance
* **op-correlation**: created
* **op-cut_y**: created
* **op-decision_tree**: created
* **op-decision_tree_cv**: created
* **op-discretization**: created
* **op-kmeans**: created
* **op-paa**: created
* **op-pattern**: created
* **op-quality_stats**: created
* **op-resampling**: created
* **op-rollmean**: created
* **op-sax**: created
* **op-slope**: created
* **op-ts_cut**: created
* **op-unwrap**: created
* **vt-cluster**: created
* **vt-correl-loop**: created
* **vt-curve**: created
* **vt-metadata**: created
* **vt-metadata-list**: created
* **vt-non-temporal-curve**: created
* **vt-pattern**: created
* **vt-percent**: created
* **vt-random-projection**: created
* **vt-raw**: created
* **vt-sax**: created
* **vt-scatter-plot-ts**: created
* **vt-table**: created
* **vt-text**: created
* **vt-ts-table**: created
* **vt-tsuid**: created

---

## 0.7.39 - 2018-05-28

First public release
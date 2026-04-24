@echo off

call robot template ^
--template phido.tsv ^
--input phido.owl ^
--ontology-iri http://purl.obolibrary.org/obo/phido.owl ^
--output phido.tmp.owl && ^
move /y phido.tmp.owl phido.owl >nul && ^
call robot convert --input phido.owl --output phido.tmp.obo && ^
move /y phido.tmp.obo phido.obo >nul

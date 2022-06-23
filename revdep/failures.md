# arkdb

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c database.cpp -o database.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c connection.cpp -o connection.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c statement.cpp -o statement.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c register.cpp -o register.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c relational.cpp -o relational.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c scan.cpp -o scan.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c altrep.cpp -o altrep.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c types.cpp -o types.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_lazy.cpp -o duckdb/third_party/zstd/compress/zstd_lazy.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_ldm.cpp -o duckdb/third_party/zstd/compress/zstd_ldm.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_opt.cpp -o duckdb/third_party/zstd/compress/zstd_opt.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o duckdb.so database.o connection.o statement.o register.o relational.o scan.o utils.o altrep.o types.o cpp11.o duckdb/ub_src_catalog.o duckdb/ub_src_catalog_catalog_entry.o duckdb/ub_src_catalog_default.o duckdb/ub_src_common.o duckdb/ub_src_common_crypto.o duckdb/ub_src_common_enums.o duckdb/ub_src_common_operator.o duckdb/ub_src_common_row_operations.o duckdb/ub_src_common_serializer.o duckdb/ub_src_common_sort.o duckdb/ub_src_common_types.o duckdb/ub_src_common_value_operations.o duckdb/src/common/vector_operations/boolean_operators.o duckdb/src/common/vector_operations/comparison_operators.o duckdb/src/common/vector_operations/generators.o duckdb/src/common/vector_operations/is_distinct_from.o duckdb/src/common/vector_operations/null_operations.o duckdb/src/common/vector_operations/numeric_inplace_operators.o duckdb/src/common/vector_operations/vector_cast.o duckdb/src/common/vector_operations/vector_copy.o duckdb/src/common/vector_operations/vector_hash.o duckdb/src/common/vector_operations/vector_storage.o duckdb/ub_src_execution.o duckdb/ub_src_execution_expression_executor.o duckdb/ub_src_execution_index_art.o duckdb/ub_src_execution_nested_loop_join.o duckdb/ub_src_execution_operator_aggregate.o duckdb/ub_src_execution_operator_filter.o duckdb/ub_src_execution_operator_helper.o duckdb/ub_src_execution_operator_join.o duckdb/ub_src_execution_operator_order.o duckdb/ub_src_execution_operator_persistent.o duckdb/ub_src_execution_operator_projection.o duckdb/ub_src_execution_operator_scan.o duckdb/ub_src_execution_operator_schema.o duckdb/ub_src_execution_operator_set.o duckdb/ub_src_execution_physical_plan.o duckdb/ub_src_function_aggregate_algebraic.o duckdb/ub_src_function_aggregate.o duckdb/ub_src_function_aggregate_distributive.o duckdb/ub_src_function_aggregate_holistic.o duckdb/ub_src_function_aggregate_nested.o duckdb/ub_src_function_aggregate_regression.o duckdb/ub_src_function.o duckdb/ub_src_function_pragma.o duckdb/ub_src_function_scalar_blob.o duckdb/ub_src_function_scalar_date.o duckdb/ub_src_function_scalar.o duckdb/ub_src_function_scalar_enum.o duckdb/ub_src_function_scalar_generic.o duckdb/ub_src_function_scalar_list.o duckdb/ub_src_function_scalar_map.o duckdb/ub_src_function_scalar_math.o duckdb/ub_src_function_scalar_operators.o duckdb/ub_src_function_scalar_sequence.o duckdb/ub_src_function_scalar_string.o duckdb/ub_src_function_scalar_struct.o duckdb/ub_src_function_scalar_system.o duckdb/ub_src_function_table.o duckdb/ub_src_function_table_system.o duckdb/ub_src_function_table_version.o duckdb/ub_src_main.o duckdb/ub_src_main_capi.o duckdb/ub_src_main_extension.o duckdb/ub_src_main_relation.o duckdb/ub_src_main_settings.o duckdb/ub_src_optimizer.o duckdb/ub_src_optimizer_join_order.o duckdb/ub_src_optimizer_matcher.o duckdb/ub_src_optimizer_pullup.o duckdb/ub_src_optimizer_pushdown.o duckdb/ub_src_optimizer_rule.o duckdb/ub_src_optimizer_statistics_expression.o duckdb/ub_src_optimizer_statistics_operator.o duckdb/ub_src_parallel.o duckdb/ub_src_parser.o duckdb/ub_src_parser_constraints.o duckdb/ub_src_parser_expression.o duckdb/ub_src_parser_parsed_data.o duckdb/ub_src_parser_query_node.o duckdb/ub_src_parser_statement.o duckdb/ub_src_parser_tableref.o duckdb/ub_src_parser_transform_constraint.o duckdb/ub_src_parser_transform_expression.o duckdb/ub_src_parser_transform_helpers.o duckdb/ub_src_parser_transform_statement.o duckdb/ub_src_parser_transform_tableref.o duckdb/ub_src_planner.o duckdb/ub_src_planner_binder_expression.o duckdb/ub_src_planner_binder_query_node.o duckdb/ub_src_planner_binder_statement.o duckdb/ub_src_planner_binder_tableref.o duckdb/ub_src_planner_expression.o duckdb/ub_src_planner_expression_binder.o duckdb/ub_src_planner_filter.o duckdb/ub_src_planner_operator.o duckdb/ub_src_planner_subquery.o duckdb/ub_src_storage.o duckdb/ub_src_storage_buffer.o duckdb/ub_src_storage_checkpoint.o duckdb/ub_src_storage_compression.o duckdb/ub_src_storage_statistics.o duckdb/ub_src_storage_table.o duckdb/ub_src_transaction.o duckdb/third_party/fmt/format.o duckdb/third_party/miniz/miniz.o duckdb/third_party/re2/re2/bitstate.o duckdb/third_party/re2/re2/compile.o duckdb/third_party/re2/re2/dfa.o duckdb/third_party/re2/re2/filtered_re2.o duckdb/third_party/re2/re2/mimics_pcre.o duckdb/third_party/re2/re2/nfa.o duckdb/third_party/re2/re2/onepass.o duckdb/third_party/re2/re2/parse.o duckdb/third_party/re2/re2/perl_groups.o duckdb/third_party/re2/re2/prefilter.o duckdb/third_party/re2/re2/prefilter_tree.o duckdb/third_party/re2/re2/prog.o duckdb/third_party/re2/re2/re2.o duckdb/third_party/re2/re2/regexp.o duckdb/third_party/re2/re2/set.o duckdb/third_party/re2/re2/simplify.o duckdb/third_party/re2/re2/stringpiece.o duckdb/third_party/re2/re2/tostring.o duckdb/third_party/re2/re2/unicode_casefold.o duckdb/third_party/re2/re2/unicode_groups.o duckdb/third_party/re2/util/rune.o duckdb/third_party/re2/util/strutil.o duckdb/third_party/hyperloglog/hyperloglog.o duckdb/third_party/hyperloglog/sds.o duckdb/third_party/fastpforlib/bitpacking.o duckdb/third_party/utf8proc/utf8proc.o duckdb/third_party/utf8proc/utf8proc_wrapper.o duckdb/third_party/libpg_query/pg_functions.o duckdb/third_party/libpg_query/postgres_parser.o duckdb/third_party/libpg_query/src_backend_nodes_list.o duckdb/third_party/libpg_query/src_backend_nodes_makefuncs.o duckdb/third_party/libpg_query/src_backend_nodes_value.o duckdb/third_party/libpg_query/src_backend_parser_gram.o duckdb/third_party/libpg_query/src_backend_parser_parser.o duckdb/third_party/libpg_query/src_backend_parser_scan.o duckdb/third_party/libpg_query/src_backend_parser_scansup.o duckdb/third_party/libpg_query/src_common_keywords.o duckdb/extension/parquet/parquet-extension.o duckdb/extension/parquet/column_writer.o duckdb/extension/parquet/parquet_reader.o duckdb/extension/parquet/parquet_timestamp.o duckdb/extension/parquet/parquet_writer.o duckdb/extension/parquet/column_reader.o duckdb/extension/parquet/parquet_statistics.o duckdb/extension/parquet/parquet_metadata.o duckdb/extension/parquet/zstd_file_system.o duckdb/third_party/parquet/parquet_constants.o duckdb/third_party/parquet/parquet_types.o duckdb/third_party/thrift/thrift/protocol/TProtocol.o duckdb/third_party/thrift/thrift/transport/TTransportException.o duckdb/third_party/thrift/thrift/transport/TBufferTransports.o duckdb/third_party/snappy/snappy.o duckdb/third_party/snappy/snappy-sinksource.o duckdb/third_party/zstd/decompress/zstd_ddict.o duckdb/third_party/zstd/decompress/huf_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress_block.o duckdb/third_party/zstd/common/entropy_common.o duckdb/third_party/zstd/common/fse_decompress.o duckdb/third_party/zstd/common/zstd_common.o duckdb/third_party/zstd/common/error_private.o duckdb/third_party/zstd/common/xxhash.o duckdb/third_party/zstd/compress/fse_compress.o duckdb/third_party/zstd/compress/hist.o duckdb/third_party/zstd/compress/huf_compress.o duckdb/third_party/zstd/compress/zstd_compress.o duckdb/third_party/zstd/compress/zstd_compress_literals.o duckdb/third_party/zstd/compress/zstd_compress_sequences.o duckdb/third_party/zstd/compress/zstd_compress_superblock.o duckdb/third_party/zstd/compress/zstd_double_fast.o duckdb/third_party/zstd/compress/zstd_fast.o duckdb/third_party/zstd/compress/zstd_lazy.o duckdb/third_party/zstd/compress/zstd_ldm.o duckdb/third_party/zstd/compress/zstd_opt.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
*** Found local C++ source: 'tools/cpp'
*** Building libarrow from source
    For a faster, more complete installation, set the environment variable NOT_CRAN=true before installing
    See install vignette for details:
    https://cran.r-project.org/web/packages/arrow/vignettes/install.html
**** arrow  


trying URL 'https://cloud.r-project.org/src/contrib/duckdb_0.4.0.tar.gz'
Content type 'application/x-gzip' length 2697637 bytes (2.6 MB)
==================================================
downloaded 2.6 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘bit’ ...
...
* DONE (pillar)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘spelling’ ...
* DONE (spelling)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *source* package ‘arrow’ ...
** package ‘arrow’ successfully unpacked and MD5 sums checked
** using staged installation


```
### CRAN

```
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c database.cpp -o database.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c connection.cpp -o connection.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c statement.cpp -o statement.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c register.cpp -o register.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c relational.cpp -o relational.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c scan.cpp -o scan.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c altrep.cpp -o altrep.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c types.cpp -o types.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c cpp11.cpp -o cpp11.o
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_lazy.cpp -o duckdb/third_party/zstd/compress/zstd_lazy.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_ldm.cpp -o duckdb/third_party/zstd/compress/zstd_ldm.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd/include -I../inst/include -Iduckdb -DBUILD_PARQUET_EXTENSION -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include   -fpic  -g -O2  -c duckdb/third_party/zstd/compress/zstd_opt.cpp -o duckdb/third_party/zstd/compress/zstd_opt.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o duckdb.so database.o connection.o statement.o register.o relational.o scan.o utils.o altrep.o types.o cpp11.o duckdb/ub_src_catalog.o duckdb/ub_src_catalog_catalog_entry.o duckdb/ub_src_catalog_default.o duckdb/ub_src_common.o duckdb/ub_src_common_crypto.o duckdb/ub_src_common_enums.o duckdb/ub_src_common_operator.o duckdb/ub_src_common_row_operations.o duckdb/ub_src_common_serializer.o duckdb/ub_src_common_sort.o duckdb/ub_src_common_types.o duckdb/ub_src_common_value_operations.o duckdb/src/common/vector_operations/boolean_operators.o duckdb/src/common/vector_operations/comparison_operators.o duckdb/src/common/vector_operations/generators.o duckdb/src/common/vector_operations/is_distinct_from.o duckdb/src/common/vector_operations/null_operations.o duckdb/src/common/vector_operations/numeric_inplace_operators.o duckdb/src/common/vector_operations/vector_cast.o duckdb/src/common/vector_operations/vector_copy.o duckdb/src/common/vector_operations/vector_hash.o duckdb/src/common/vector_operations/vector_storage.o duckdb/ub_src_execution.o duckdb/ub_src_execution_expression_executor.o duckdb/ub_src_execution_index_art.o duckdb/ub_src_execution_nested_loop_join.o duckdb/ub_src_execution_operator_aggregate.o duckdb/ub_src_execution_operator_filter.o duckdb/ub_src_execution_operator_helper.o duckdb/ub_src_execution_operator_join.o duckdb/ub_src_execution_operator_order.o duckdb/ub_src_execution_operator_persistent.o duckdb/ub_src_execution_operator_projection.o duckdb/ub_src_execution_operator_scan.o duckdb/ub_src_execution_operator_schema.o duckdb/ub_src_execution_operator_set.o duckdb/ub_src_execution_physical_plan.o duckdb/ub_src_function_aggregate_algebraic.o duckdb/ub_src_function_aggregate.o duckdb/ub_src_function_aggregate_distributive.o duckdb/ub_src_function_aggregate_holistic.o duckdb/ub_src_function_aggregate_nested.o duckdb/ub_src_function_aggregate_regression.o duckdb/ub_src_function.o duckdb/ub_src_function_pragma.o duckdb/ub_src_function_scalar_blob.o duckdb/ub_src_function_scalar_date.o duckdb/ub_src_function_scalar.o duckdb/ub_src_function_scalar_enum.o duckdb/ub_src_function_scalar_generic.o duckdb/ub_src_function_scalar_list.o duckdb/ub_src_function_scalar_map.o duckdb/ub_src_function_scalar_math.o duckdb/ub_src_function_scalar_operators.o duckdb/ub_src_function_scalar_sequence.o duckdb/ub_src_function_scalar_string.o duckdb/ub_src_function_scalar_struct.o duckdb/ub_src_function_scalar_system.o duckdb/ub_src_function_table.o duckdb/ub_src_function_table_system.o duckdb/ub_src_function_table_version.o duckdb/ub_src_main.o duckdb/ub_src_main_capi.o duckdb/ub_src_main_extension.o duckdb/ub_src_main_relation.o duckdb/ub_src_main_settings.o duckdb/ub_src_optimizer.o duckdb/ub_src_optimizer_join_order.o duckdb/ub_src_optimizer_matcher.o duckdb/ub_src_optimizer_pullup.o duckdb/ub_src_optimizer_pushdown.o duckdb/ub_src_optimizer_rule.o duckdb/ub_src_optimizer_statistics_expression.o duckdb/ub_src_optimizer_statistics_operator.o duckdb/ub_src_parallel.o duckdb/ub_src_parser.o duckdb/ub_src_parser_constraints.o duckdb/ub_src_parser_expression.o duckdb/ub_src_parser_parsed_data.o duckdb/ub_src_parser_query_node.o duckdb/ub_src_parser_statement.o duckdb/ub_src_parser_tableref.o duckdb/ub_src_parser_transform_constraint.o duckdb/ub_src_parser_transform_expression.o duckdb/ub_src_parser_transform_helpers.o duckdb/ub_src_parser_transform_statement.o duckdb/ub_src_parser_transform_tableref.o duckdb/ub_src_planner.o duckdb/ub_src_planner_binder_expression.o duckdb/ub_src_planner_binder_query_node.o duckdb/ub_src_planner_binder_statement.o duckdb/ub_src_planner_binder_tableref.o duckdb/ub_src_planner_expression.o duckdb/ub_src_planner_expression_binder.o duckdb/ub_src_planner_filter.o duckdb/ub_src_planner_operator.o duckdb/ub_src_planner_subquery.o duckdb/ub_src_storage.o duckdb/ub_src_storage_buffer.o duckdb/ub_src_storage_checkpoint.o duckdb/ub_src_storage_compression.o duckdb/ub_src_storage_statistics.o duckdb/ub_src_storage_table.o duckdb/ub_src_transaction.o duckdb/third_party/fmt/format.o duckdb/third_party/miniz/miniz.o duckdb/third_party/re2/re2/bitstate.o duckdb/third_party/re2/re2/compile.o duckdb/third_party/re2/re2/dfa.o duckdb/third_party/re2/re2/filtered_re2.o duckdb/third_party/re2/re2/mimics_pcre.o duckdb/third_party/re2/re2/nfa.o duckdb/third_party/re2/re2/onepass.o duckdb/third_party/re2/re2/parse.o duckdb/third_party/re2/re2/perl_groups.o duckdb/third_party/re2/re2/prefilter.o duckdb/third_party/re2/re2/prefilter_tree.o duckdb/third_party/re2/re2/prog.o duckdb/third_party/re2/re2/re2.o duckdb/third_party/re2/re2/regexp.o duckdb/third_party/re2/re2/set.o duckdb/third_party/re2/re2/simplify.o duckdb/third_party/re2/re2/stringpiece.o duckdb/third_party/re2/re2/tostring.o duckdb/third_party/re2/re2/unicode_casefold.o duckdb/third_party/re2/re2/unicode_groups.o duckdb/third_party/re2/util/rune.o duckdb/third_party/re2/util/strutil.o duckdb/third_party/hyperloglog/hyperloglog.o duckdb/third_party/hyperloglog/sds.o duckdb/third_party/fastpforlib/bitpacking.o duckdb/third_party/utf8proc/utf8proc.o duckdb/third_party/utf8proc/utf8proc_wrapper.o duckdb/third_party/libpg_query/pg_functions.o duckdb/third_party/libpg_query/postgres_parser.o duckdb/third_party/libpg_query/src_backend_nodes_list.o duckdb/third_party/libpg_query/src_backend_nodes_makefuncs.o duckdb/third_party/libpg_query/src_backend_nodes_value.o duckdb/third_party/libpg_query/src_backend_parser_gram.o duckdb/third_party/libpg_query/src_backend_parser_parser.o duckdb/third_party/libpg_query/src_backend_parser_scan.o duckdb/third_party/libpg_query/src_backend_parser_scansup.o duckdb/third_party/libpg_query/src_common_keywords.o duckdb/extension/parquet/parquet-extension.o duckdb/extension/parquet/column_writer.o duckdb/extension/parquet/parquet_reader.o duckdb/extension/parquet/parquet_timestamp.o duckdb/extension/parquet/parquet_writer.o duckdb/extension/parquet/column_reader.o duckdb/extension/parquet/parquet_statistics.o duckdb/extension/parquet/parquet_metadata.o duckdb/extension/parquet/zstd_file_system.o duckdb/third_party/parquet/parquet_constants.o duckdb/third_party/parquet/parquet_types.o duckdb/third_party/thrift/thrift/protocol/TProtocol.o duckdb/third_party/thrift/thrift/transport/TTransportException.o duckdb/third_party/thrift/thrift/transport/TBufferTransports.o duckdb/third_party/snappy/snappy.o duckdb/third_party/snappy/snappy-sinksource.o duckdb/third_party/zstd/decompress/zstd_ddict.o duckdb/third_party/zstd/decompress/huf_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress_block.o duckdb/third_party/zstd/common/entropy_common.o duckdb/third_party/zstd/common/fse_decompress.o duckdb/third_party/zstd/common/zstd_common.o duckdb/third_party/zstd/common/error_private.o duckdb/third_party/zstd/common/xxhash.o duckdb/third_party/zstd/compress/fse_compress.o duckdb/third_party/zstd/compress/hist.o duckdb/third_party/zstd/compress/huf_compress.o duckdb/third_party/zstd/compress/zstd_compress.o duckdb/third_party/zstd/compress/zstd_compress_literals.o duckdb/third_party/zstd/compress/zstd_compress_sequences.o duckdb/third_party/zstd/compress/zstd_compress_superblock.o duckdb/third_party/zstd/compress/zstd_double_fast.o duckdb/third_party/zstd/compress/zstd_fast.o duckdb/third_party/zstd/compress/zstd_lazy.o duckdb/third_party/zstd/compress/zstd_ldm.o duckdb/third_party/zstd/compress/zstd_opt.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
*** Found local C++ source: 'tools/cpp'
*** Building libarrow from source
    For a faster, more complete installation, set the environment variable NOT_CRAN=true before installing
    See install vignette for details:
    https://cran.r-project.org/web/packages/arrow/vignettes/install.html
**** arrow  


trying URL 'https://cloud.r-project.org/src/contrib/duckdb_0.4.0.tar.gz'
Content type 'application/x-gzip' length 2697637 bytes (2.6 MB)
==================================================
downloaded 2.6 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘bit’ ...
...
* DONE (pillar)
* installing *binary* package ‘pkgload’ ...
* DONE (pkgload)
* installing *binary* package ‘spelling’ ...
* DONE (spelling)
* installing *binary* package ‘tidyselect’ ...
* DONE (tidyselect)
* installing *source* package ‘arrow’ ...
** package ‘arrow’ successfully unpacked and MD5 sums checked
** using staged installation


```
# ChromSCape

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
* DONE (beeswarm)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
** R
** inst
...
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (batchelor)
* installing *source* package ‘scater’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
* DONE (beeswarm)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
** R
** inst
...
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (batchelor)
* installing *source* package ‘scater’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
# insight

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c dgedi.f -o dgedi.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c dgefa.f -o dgefa.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ugee.c -o ugee.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o gee.so dgedi.o dgefa.o ugee.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Using bundled CSDP
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_dstudy.cc -o stanExports_random_dstudy.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_jzs.cc -o stanExports_random_jzs.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_jzs_dstudy.cc -o stanExports_random_jzs_dstudy.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_ordered.cc -o stanExports_random_ordered.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o metaBMA.so RcppExports.o stanExports_fixed.o stanExports_fixed_jzs.o stanExports_random.o stanExports_random_H0.o stanExports_random_dstudy.o stanExports_random_jzs.o stanExports_random_jzs_dstudy.o stanExports_random_ordered.o -L/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -Wl,-rpath,/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -ltbb -ltbbmalloc -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stanmarg.stan
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c init.cpp -o init.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o blavaan.so stan_files/stanmarg.o init.o -L/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -Wl,-rpath,/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -ltbb -ltbbmalloc -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
rm stan_files/stanmarg.cc


trying URL 'https://cloud.r-project.org/src/contrib/epiR_2.0.48.tar.gz'
Content type 'application/x-gzip' length 961625 bytes (939 KB)
==================================================
downloaded 939 KB

trying URL 'https://cloud.r-project.org/src/contrib/fungible_2.2.2.tar.gz'
Content type 'application/x-gzip' length 497358 bytes (485 KB)
==================================================
downloaded 485 KB

...
/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_stanmarg_namespace::model_stanmarg; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]


installing to /c4/home/henrik/repositories/globals/revdep/library/insight/00LOCK-blavaan/00new/blavaan/libs
** R
** inst
** byte-compile and prepare package for lazy loading


```
### CRAN

```
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c dgedi.f -o dgedi.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c dgefa.f -o dgefa.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ugee.c -o ugee.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o gee.so dgedi.o dgefa.o ugee.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Using bundled CSDP
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_dstudy.cc -o stanExports_random_dstudy.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_jzs.cc -o stanExports_random_jzs.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_jzs_dstudy.cc -o stanExports_random_jzs_dstudy.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stanExports_random_ordered.cc -o stanExports_random_ordered.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o metaBMA.so RcppExports.o stanExports_fixed.o stanExports_fixed_jzs.o stanExports_random.o stanExports_random_H0.o stanExports_random_dstudy.o stanExports_random_jzs.o stanExports_random_jzs_dstudy.o stanExports_random_ordered.o -L/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -Wl,-rpath,/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -ltbb -ltbbmalloc -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stanmarg.stan
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/rstan/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include' -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c init.cpp -o init.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o blavaan.so stan_files/stanmarg.o init.o -L/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -Wl,-rpath,/c4/home/henrik/repositories/globals/revdep/library/insight/RcppParallel/lib/ -ltbb -ltbbmalloc -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
rm stan_files/stanmarg.cc


trying URL 'https://cloud.r-project.org/src/contrib/epiR_2.0.48.tar.gz'
Content type 'application/x-gzip' length 961625 bytes (939 KB)
==================================================
downloaded 939 KB

trying URL 'https://cloud.r-project.org/src/contrib/fungible_2.2.2.tar.gz'
Content type 'application/x-gzip' length 497358 bytes (485 KB)
==================================================
downloaded 485 KB

...
/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_stanmarg_namespace::model_stanmarg; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/c4/home/henrik/repositories/globals/revdep/library/insight/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/c4/home/henrik/repositories/globals/revdep/library/insight/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]


installing to /c4/home/henrik/repositories/globals/revdep/library/insight/00LOCK-blavaan/00new/blavaan/libs
** R
** inst
** byte-compile and prepare package for lazy loading


```
# MineICA

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_cheapcgi.c -o ucsc/_cheapcgi.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/internet.c -o ucsc/internet.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/https.c -o ucsc/https.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_cheapcgi.c -o ucsc/_cheapcgi.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/internet.c -o ucsc/internet.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/https.c -o ucsc/https.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
# oolong

<details>

* Version: 0.4.1
* GitHub: https://github.com/chainsawriot/oolong
* Source code: https://github.com/cran/oolong
* Date/Publication: 2021-11-09 10:20:11 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "oolong")` for more info

</details>

## In both

*   checking whether package ‘oolong’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/new/oolong.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘oolong’ ...
** package ‘oolong’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Error in normalize(self$components, "l1") : 
  could not find function "normalize"
ERROR: lazydata failed for package ‘oolong’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/new/oolong.Rcheck/oolong’


```
### CRAN

```
* installing *source* package ‘oolong’ ...
** package ‘oolong’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Error in normalize(self$components, "l1") : 
  could not find function "normalize"
ERROR: lazydata failed for package ‘oolong’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/old/oolong.Rcheck/oolong’


```
# Prostar

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c hwe.cpp -o hwe.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c kstest.cpp -o kstest.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c maximum_subarray.cpp -o maximum_subarray.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c mfastLm.cpp -o mfastLm.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c pairwise.cpp -o pairwise.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c qdiag.cpp -o qdiag.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c quadforms.cpp -o quadforms.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c repmat.cpp -o repmat.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c trace.cpp -o trace.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o MESS.so RcppExports.o addtorows.o bin.o chi_square.o cmd.o colCumSum.o cor.o cumsumbinning.o dcov.o filldown.o hwe.o kstest.o maximum_subarray.o mfastLm.o pairwise.o qdiag.o quadforms.o repmat.o trace.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/MESS_0.5.9.tar.gz'
Content type 'application/x-gzip' length 2879676 bytes (2.7 MB)
==================================================
downloaded 2.7 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c hwe.cpp -o hwe.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c kstest.cpp -o kstest.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c maximum_subarray.cpp -o maximum_subarray.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c mfastLm.cpp -o mfastLm.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c pairwise.cpp -o pairwise.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c qdiag.cpp -o qdiag.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c quadforms.cpp -o quadforms.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c repmat.cpp -o repmat.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c trace.cpp -o trace.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o MESS.so RcppExports.o addtorows.o bin.o chi_square.o cmd.o colCumSum.o cor.o cumsumbinning.o dcov.o filldown.o hwe.o kstest.o maximum_subarray.o mfastLm.o pairwise.o qdiag.o quadforms.o repmat.o trace.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/MESS_0.5.9.tar.gz'
Content type 'application/x-gzip' length 2879676 bytes (2.7 MB)
==================================================
downloaded 2.7 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
# Seurat

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/monocle_2.24.1.tar.gz'
Content type 'application/x-gzip' length 9450203 bytes (9.0 MB)
==================================================
downloaded 9.0 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (DESeq2)

The downloaded source packages are in
	‘/scratch/henrik/RtmpqGto4N/downloaded_packages’


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/Seurat/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/monocle_2.24.1.tar.gz'
Content type 'application/x-gzip' length 9450203 bytes (9.0 MB)
==================================================
downloaded 9.0 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (DESeq2)

The downloaded source packages are in
	‘/scratch/henrik/RtmpqGto4N/downloaded_packages’


```
# targets

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Renaming init
"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/Rscript" "../tools/renameinit.R"
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c allocator.cpp -o allocator.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c backends.cpp -o backends.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c codegen.cpp -o codegen.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
...
 8: library(pkg_name, lib.loc = lib, character.only = TRUE, logical.return = TRUE)
 9: withCallingHandlers(expr, packageStartupMessage = function(c) tryInvokeRestart("muffleMessage"))
10: suppressPackageStartupMessages(library(pkg_name, lib.loc = lib,     character.only = TRUE, logical.return = TRUE))
11: doTryCatch(return(expr), name, parentenv, handler)
12: tryCatchOne(expr, names, parentenv, handlers[[1L]])
13: tryCatchList(expr, classes, parentenv, handlers)
14: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call, nlines = 1L)        prefix <- paste("Error in", dcall, ": ")        LONG <- 75L        sm <- strsplit(conditionMessage(e), "\n")[[1L]]        w <- 14L + nchar(dcall, type = "w") + nchar(sm[1L], type = "w")        if (is.na(w))             w <- 14L + nchar(dcall, type = "b") + nchar(sm[1L],                 type = "b")        if (w > LONG)             prefix <- paste0(prefix, "\n  ")    }    else prefix <- "Error : "    msg <- paste0(prefix, conditionMessage(e), "\n")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption("show.error.messages"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = "try-error", condition = e))})
15: try(suppressPackageStartupMessages(library(pkg_name, lib.loc = lib,     character.only = TRUE, logical.return = TRUE)))
16: tools:::.test_load_package("arrow", "/c4/home/henrik/repositories/globals/revdep/library/targets/00LOCK-arrow/00new")
An irrecoverable exception occurred. R is aborting now ...


trying URL 'https://cloud.r-project.org/src/contrib/torch_0.8.0.tar.gz'
Content type 'application/x-gzip' length 1549458 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (paws.developer.tools)
* installing *source* package ‘paws.end.user.computing’ ...
** package ‘paws.end.user.computing’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading


```
### CRAN

```
Renaming init
"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/Rscript" "../tools/renameinit.R"
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c allocator.cpp -o allocator.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c backends.cpp -o backends.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c codegen.cpp -o codegen.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/targets/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
...
 8: library(pkg_name, lib.loc = lib, character.only = TRUE, logical.return = TRUE)
 9: withCallingHandlers(expr, packageStartupMessage = function(c) tryInvokeRestart("muffleMessage"))
10: suppressPackageStartupMessages(library(pkg_name, lib.loc = lib,     character.only = TRUE, logical.return = TRUE))
11: doTryCatch(return(expr), name, parentenv, handler)
12: tryCatchOne(expr, names, parentenv, handlers[[1L]])
13: tryCatchList(expr, classes, parentenv, handlers)
14: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call, nlines = 1L)        prefix <- paste("Error in", dcall, ": ")        LONG <- 75L        sm <- strsplit(conditionMessage(e), "\n")[[1L]]        w <- 14L + nchar(dcall, type = "w") + nchar(sm[1L], type = "w")        if (is.na(w))             w <- 14L + nchar(dcall, type = "b") + nchar(sm[1L],                 type = "b")        if (w > LONG)             prefix <- paste0(prefix, "\n  ")    }    else prefix <- "Error : "    msg <- paste0(prefix, conditionMessage(e), "\n")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption("show.error.messages"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = "try-error", condition = e))})
15: try(suppressPackageStartupMessages(library(pkg_name, lib.loc = lib,     character.only = TRUE, logical.return = TRUE)))
16: tools:::.test_load_package("arrow", "/c4/home/henrik/repositories/globals/revdep/library/targets/00LOCK-arrow/00new")
An irrecoverable exception occurred. R is aborting now ...


trying URL 'https://cloud.r-project.org/src/contrib/torch_0.8.0.tar.gz'
Content type 'application/x-gzip' length 1549458 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (paws.developer.tools)
* installing *source* package ‘paws.end.user.computing’ ...
** package ‘paws.end.user.computing’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading


```

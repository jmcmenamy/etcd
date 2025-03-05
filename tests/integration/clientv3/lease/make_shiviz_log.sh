clearAll ; rm -rf tests/*.txt
ptest -n 1 TestLeasingGetChecksForExpiration
find tests -maxdepth 1 -type f -name '*-Log.txt' ! -name '*-zap-Log.txt' -delete
GoVector --log_type zap --log_dir tests --outfile hello.log
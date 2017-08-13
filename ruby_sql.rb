require 'dbi'

###########################################################################################
### sbalram / marlabs / sql server demo / 10/06/06
###########################################################################################


myConnect = "DBI:ODBC:driver={SQL Server};Server=WIN2003-SQL2005;UID=sa;PWD=marlabs"
myQuery = "select name, type from sysobjects"
###########################################################################################
###########################################################################################

def getResults(aConnect, aQuery)

  db = DBI.connect(aConnect);
  stmt = db.prepare(aQuery);
  stmt.execute();
  results = []
  rows = []
  columns = []
  for curCol in stmt.column_info()
      columns.push(curCol)
  end
  for curRow in stmt.fetch_all()
    rows.push(curRow)
  end
  db.disconnect
  
  results.push(rows)
  results.push(columns)
  return results
  
end


###########################################################################################
## PROGRAM STARTS HERE - STANDALONE PROGRAM WHICH USES getResults() METHOD ABOVE
###########################################################################################
qResults = getResults(myConnect, myQuery)
qRows = qResults[0]
qCols = qResults[1]

for curCol in qCols
## curCol is a hash, so the funny syntax
  print curCol.each {|key, value| print key, '-->', value,"\n"} 
end

for curRow in qRows
  print curRow,"\n"
end

print "Cols : #{qCols.length}  Rows : #{ qRows.length}"

###########################################################################################
## PROGRAM ENDS HERE
###########################################################################################

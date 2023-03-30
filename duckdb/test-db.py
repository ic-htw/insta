import duckdb
con = duckdb.connect(database='insta.duckdb', read_only=True)
sql = """
explain analyse select count(*) from vsubmission;
"""
con.execute(sql)
print(con.fetchall())

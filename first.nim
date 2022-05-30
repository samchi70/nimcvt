import os
import std/streams
import std/tables

if paramCount() < 2:
    echo "You need a transcations file and begining invoice number"
    echo "ex: paycvt check#.csv 123"
    quit()

#echo paramCount(), " ", paramStr(1)
# declare variables used in conversion to iif file
let input_file: string = paramStr(1)
let cust_file: string = "custs.csv"
var check_num: int64 = 0
var inv_amount: float64 = 0
var customer:string = ""
var prev_cust:string = ""
let head:string ="!TRNS\tTRNSID\tTRNSTYPE\tDATE\tACCNT\tNAME\tAMOUNT\tDOCNUM\r\n!SPL\tSPLID\tTRNSTYPE\tDATE\tACCNT\tNAME\tAMOUNT\tDOCNUM\r\n!ENDTRNS\r\n"


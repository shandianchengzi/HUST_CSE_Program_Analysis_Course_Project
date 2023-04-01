#coding=utf-8
import os

def exec_and_getresult(cmd):
    os.system(cmd+" > tmp.txt")
    with open("tmp.txt",'r') as f:
        return f.readlines()
def find_str(d,s):
    cmd = 'find "$(pwd)" -name "%s" | xargs grep "%s"'%(d,s)
    return exec_and_getresult(cmd)
def find_and_store(d):
    cmd = 'find "$(pwd)" -name "%s"'%(d)
    return exec_and_getresult(cmd)
def find_str_num(d,s):
    cmd = 'cat "%s" | grep "%s" | wc -l'%(d,s)
    return exec_and_getresult(cmd)

file_name="_flaw*"
files = find_and_store(file_name+'.html')
for fp in files:
    fp=fp.split('\n')[0]
    print(fp.split('/')[-1])
    to_find=["CWE-","CWE-20","CWE-78","CWE-119","CWE-120","CWE-126","CWE-134","CWE-190","CWE-327","CWE-362","CWE-367","CWE-676","CWE-807"]
    sum_CWE_raw=0
    sum_CWE_end=0
    for todo in to_find:
        res = find_str_num(fp,todo)
        print(todo, res[0], end='')
        if todo != 'CWE-':
            sum_CWE_end+=int(res[0])
        else:
            sum_CWE_raw=int(res[0])
    if sum_CWE_raw != sum_CWE_end:
        print("!!!new CWE:",sum_CWE_raw, sum_CWE_end)
    print("----------------------------")
os.system("rm tmp.txt")
        
'''
Here is the original version of fizz_buzz implementation:

def fizz_buzz(limit):
    for i in range(limit):
        if i % 3 == 0:
            print('fizz')
        if i % 5 == 0:
            print('fizz')
        if i % 3 and i % 5:
            print(i)

def main():
    fizz_buzz(10)
'''

# 6.improve this program to allow it accept command line arguments
# gg -> jump to the start of file; O -> open a new line before the current line
# /10 -> locate 10; n -> find the next one; ci( -> change the contents inside ()
import sys

def fizz_buzz(limit):
# 2.the output number starts from 0, change it to 1
# /range -> locate range; ww -> go into the parenthesis; i ->insert
# 3.the output number ends at 9, change it to 10
# e -> go right before the parenthesis; i -> insert
    for i in range(1, limit + 1):
# 5.make modifications on fizz and buzz
# gg -> go to the start of file; 24j -> jump to a specifi line we want; $ -> jump to the end of line; i -> insert 
# 4j -> jump to the next print; . -> duplicates the last modification
        if i % 3 == 0:
            print('fizz', end = '')
# 4.there is no differentiation between two situations (only fizz, no buzz)
# /fizz ->locate fizz; n ->find the next match; ci' -> change contents inside quotes
        if i % 5 == 0:
            print('buzz', end = '')
        if i % 3 and i % 5:
            print(i)

# 1.main is never executed, fix it
# G -> go to the end of file; o -> open a new line below; edit
def main():
    fizz_buzz(int(sys.argv[1]))
    
if __name__ == '__main__':
    main()

import re

def f_remove_special_char(l_input):
    l_return = ""

    l_return = re.sub(r'[^A-Za-z0-9]', '', l_input)

    return l_return
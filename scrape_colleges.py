import urllib2
from bs4 import BeautifulSoup
import sys

"""
Scraping Wikipedia Pages for College information

This is a Python Script that will look at the wikipedia pages inputed below (And more if wanted) URLS
It will take the first table that is on the top right of each wiki page.
It will then take that information and turn it into a Python dictionary type.
(That is all so far but possible to easily make Myswql inserts)
"""

URLS = ["https://en.wikipedia.org/wiki/Boston_University",
        "https://en.wikipedia.org/wiki/Harvard_University",
        "https://en.wikipedia.org/wiki/Northeastern_University",
        "https://en.wikipedia.org/wiki/Boston_College",
        "https://en.wikipedia.org/wiki/University_of_Massachusetts_Boston",
        "https://en.wikipedia.org/wiki/Suffolk_University",
        "https://en.wikipedia.org/wiki/Tufts_University",
        "https://en.wikipedia.org/wiki/Massachusetts_Institute_of_Technology",
        "https://en.wikipedia.org/wiki/Bunker_Hill_Community_College"]

VERBOSE = True

def get_important_table(url):
    """
    Returns table that college information is on in each wiki page

    :param url: College Wiki url you are searching
    :return: BeautifulSoup table
    """

    opener = urllib2.urlopen(url)

    bs = BeautifulSoup(opener, 'html.parser')

    # Grab table with class name of 'infobox vcard'
    tables = bs.findAll('table', {'class': 'infobox vcard'})


    table_i = 0
    official_i = -1
    for table in tables:
        for row in table.findAll(text=True):
            if "established" in row.lower():
                if official_i >= 0:
                    print "Table with information has already been picked, This might be a mistake!"
                # This is the important table
                official_i = table_i
        table_i += 1

    if official_i < 0:
        print "There has been an error and cannot find when college was established"
        sys.exit(1)

    table = tables[official_i]
    return table


def get_text_rows(table):
    """
    Turn the BeautifulSoup table element into text list

    :param table: results of get_important_table(url)
    :return: List of rows that have text in them
    """
    rows = table.findAll('tr')

    text_rows = []
    for row in rows:
        text_row = row.findAll(text=True)
        temp_row = []
        for col in text_row:
            if '\n' not in col:
                temp_row.append(col)
        text_rows.append(temp_row)

    return text_rows

def get_college_dict(text_rows, url):
    """
    Turn the text table into a dictiolnary

    :param text_rows: text rows for the url
    :param url: Url that you searched
    :return: Returns Dictionary from table in URL (Dictionary is not clean, random weird characters involving [] and ())
    """
    college = {}
    for row in text_rows:
        i = 0
        key = ""
        info = ""
        for col in row:
            if i == 0:
                key = col
            else:
                info += col
            i += 1
        info = info.rstrip(' ')
        if key != "":
            college[key] = info
    try:
        college['Name'] = url.replace('_', ' ').split('/')[-1:][0]
    except:
        print "Could not get Name of the College from URL"
        sys.exit(2)

    return  college

def get_seal_img(table):
    """
    Get the image for the College

    :param table: The table created by get_important_table(url)
    :return: Returns the URL of the college image
    """
    imgs = table.findAll('img')
    seal = ""
    img_element = imgs[0]

    # Debug Statement
    if VERBOSE:
        print "This is seal image raw: " + str(img_element)

    img_element = str(img_element).split('src="', 1)[1]

    if img_element.startswith('/'):
        img_element = img_element.lstrip('/')

    img_element = img_element.split('"', 1)[0]
    return img_element

def clean_dict(college_dict):
    """
    Quickly clean up so information is not so messy (Pretty fundemental and could be improved)

    :param college_dict: Dictionary results from get_college_dict
    :return: Returns Dictionary similair to input but cleaned up a little
    """
    new_college_dict = {}
    for key in college_dict:
        new_info = ""
        if '[' in college_dict[key]:
            new_info = college_dict[key].split('[', 1)[0]
        else:
            new_info = college_dict[key]

        if '(' in new_info:
            new_info = new_info.split('(', 1)[0]

        new_college_dict[key] = new_info
    return new_college_dict

def print_college(college):
    """
    This will print entire college dictionary

    :param college: The college dictionary you would like to be fully displayed
    """
    print "###################### FINAL RESULT ###########################"
    # SHould print out all info on college
    for key in college:
        print key + ": " + college[key]
    print "###################### FINAL RESULT ###########################"


# This is the main function
# THIS IS WHERE THE PROGRAM STARTS
if __name__ == "__main__":
    # This will loop through the URLS put in the list of the begining of this file
    for url in URLS:
        table = get_important_table(url) # Get the top right able on the wikipedia page
        text_rows = get_text_rows(table) # Grab only the text into the table and turn into list
        college = get_college_dict(text_rows, url) # Turn that text list into a dictionary
        college['Image'] = get_seal_img(table)  # Get the image in the table and add image to college dictionary
        college = clean_dict(college) # Clean mess in information
        print_college(college) # Print all college information



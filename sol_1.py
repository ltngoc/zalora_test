array = [['a','b','c'], ['d','e','f']]
for sub in array:
    for element in sub:
        print(element)
        
import string
fin = open('~/data_engineer_zalora/programming_tasks/top10_sample.csv','r')
lines = fin.readlines()
brandList = []
for ll in lines:
    temp = ll.strip('",[,]\n')
    brands = temp.split(",")
    for br in brands:
        brandList.append(br)

brand_count = dict((brand, brandList.count(brand)) for brand in brandList)
import operator
brandCount_list = brand_count.items()
sorted_brandCount = sorted(brandCount_list, key = operator.itemgetter(1), reverse=True)
for entry in sorted_brandCount:
    print(entry)

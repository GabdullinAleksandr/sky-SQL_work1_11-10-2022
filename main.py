import csv


def create_address():
    with open('old_ads.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        with open('address.csv', 'a', newline='', encoding='utf-8') as new_f:
            writer = csv.writer(new_f)
            for line in reader:
                writer.writerow([line['Id'], line['address'].split(',')[0], line['address'].split(',')[1]])


def create_author():
    dict_author = {}
    with open('old_ads.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        with open('author.csv', 'a', newline='', encoding='utf-8') as new_f:
            writer = csv.writer(new_f)
            seen = []
            count = 1
            for line in reader:
                if line['author'] in seen:
                    continue
                dict_author[line['author']] = count
                seen.append(line['author'])
                writer.writerow([count, line['author']])
                count += 1
    return dict_author


def create_ads(dict_author):
    with open('old_ads.csv', newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        with open('ads.csv', 'a', newline='', encoding='utf-8') as new_f:
            writer = csv.writer(new_f)
            for line in reader:
                s = [line['Id'], line['name'], dict_author[line['author']], line['price'],
                     line['description'], line['Id'], line['is_published']]
                writer.writerow(s)


def main():
    dict_author = create_author()
    create_address()
    create_ads(dict_author)


if __name__ == '__main__':
    main()

from mastodon import Mastodon
import random
import datetime
import csv

start_date = datetime.date(2022, 1, 1)
end_date = datetime.date(2022, 12, 31)

time_between_dates = end_date - start_date
random_number_of_days = random.randrange(time_between_dates.days)
random_date = start_date + datetime.timedelta(days=random_number_of_days)
random_date_format = random_date.strftime("%d.%m.%Y")

with open("2022_complete.csv") as f:
    rows = list(csv.reader(f))
    name = random.choice(rows)
    first_sex = name[2]
    while first_sex:
        second_name = random.choice(rows)
        if second_name[2] == first_sex:
            vorname = name[0] + " " + second_name[0] + "\ngeboren am " + random_date_format + " in " + name[4]
            break

mastodon = Mastodon(
    access_token = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
    api_base_url = 'https://botsin.space'
)

mastodon.toot(vorname)
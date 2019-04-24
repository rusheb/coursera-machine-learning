""" Download files from a list of urls."""
import urllib.request
import shutil

with open("urls") as f:
    url_list = [line[:-1] for line in f]

for url in url_list:
    print(f"downloading {url}")
    filename = url.split("/")[-1]
    urllib.request.urlretrieve(url, filename)

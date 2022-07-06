import urllib
import urllib.request

response = urllib.request.urlopen("http://localhost:8000")
print(response.read().decode('utf-8'))

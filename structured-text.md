# Structured Text

# Structured texts have rules that set the expectations on the layout.

## Computers rely on these rules in order to decode the text.

## Examples of structured text:


* CSV - Comma Separated Variables

		list = "Chile, Brazil, Mexico, Cameroon"
		
* HTML - HyperText Markup Language

		<html>
		  <head>
		    <link href="style.css" rel="stylesheet" type="text/css">
		  </head>
		  <body>
		    <h1>My File</h1>
		  </body>
		</html>
		
* HTTP - HyperText Transfer Protocol:
* The first line contains the status code
* Followed by the headers: (Server, Date, Content-Type ...)
* There is a blank line in between the list of headers and the body  


		HTTP/1.1 200 OK
		Server: nginx/1.4.6 (Ubuntu)
		Date: Tue, 06 May 2014 02:17:16 GMT
		Content-Type: text/html
		Last-Modified: Sun, 27 Apr 2014 04:03:41 GMT
		Transfer-Encoding: chunked
		Connection: keep-alive
		Content-Encoding: gzip

		<!DOCTYPE html>
		<html lang="en">
		<head><meta charset="utf-8" />
			<meta name="description" content="should i test private methods?" />
			<meta name="keywords" content="test,private,methods,oo,object,oriented,tdd" />
			<title>Should I Test Private Methods?</title>
		</head>
		<body>
			<div style='font-size: 96px; font-weight: bold; text-align: center; padding-top: 200px; font-family: Verdana, Helvetica, sans-serif'>NO</div>
			<!-- Every time you consider testing a private method, your code is telling you that you haven't allocated responsibilities well.  Are you listening to it? -->
		</body>
		</html>
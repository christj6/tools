tools
=====

Utilities I used to make my life easier -- generating html from excel files, resizing batches of large photos, etc.

excelScan.rb 
Turns this:

> 1	firstname1	lastname1	19:13.00

> 2	firstname2	lastname2	20:30.00

> 3	firstname3	lastname3	20:36.00

> 4	firstname4	lastname4	20:50.00

> 5	firstname5	lastname5	21:00.00

> 6	firstname6	lastname6	21:03.00

> 7	firstname7	lastname7	21:15.00

> 8	firstname8	lastname8	21:17.00

> 9	firstname9	lastname9	22:18.00

> 10	firstname10	lastname10	24:26.00

into this:

<tr>

	<td>19:13.00</td>
	
	<td>firstname1 lastname1</td>
	
	<td>1</td>
	
</tr>

<tr>

	<td>20:30.00</td>
	
	<td>firstname2 lastname2</td>
	
	<td>2</td>
	
</tr>

<tr>

	<td>20:36.00</td>
	
	<td>firstname3 lastname3</td>
	
	<td>3</td>
	
</tr>

<tr>

	<td>20:50.00</td>
	
	<td>firstname4 lastname4</td>
	
	<td>4</td>
	
</tr>

<tr>

	<td>21:00.00</td>
	
	<td>firstname5 lastname5</td>
	
	<td>5</td>
	
</tr>



picSquash.rb

Takes a series of photos and resizes them to conserve bandwidth.

<!DOCTYPE html>
<html>
<head>
<title>My Bill</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>
<h4>Statement:</h4>
<p>Generated date: 
{{statement['generated']}}</p>

<p>Due date: 
{{statement['generated']}}</p>

<p>Period: 
{{statement['period']['from']}} to 
{{statement['period']['to']}}</p>

<h4>Grand Total: {{total}} </h4>

<h4>Package subscriptions: </h4>
<p>
<table style="width:50%">
<tr><td>Type</td><td>Name</td><td>Cost</td></tr>
%totalSubscriptions = len(package['subscriptions'])
%for item in range(0,totalSubscriptions):
<tr>
<td>
{{package['subscriptions'][item]['type']}}
</td><td>
{{package['subscriptions'][item]['name']}}
</td><td>
{{package['subscriptions'][item]['cost']}}
</td>
</tr>
%end
</table>
Package subscribtion Total: {{package['total']}}
</p>

<h4>Call Charges: </h4>
<p>
<table style="width:50%">
<tr><td>Called</td><td>Duration</td><td>Cost</td></tr>
%totalCalls = len(callCharges['calls'])
%for item in range(0,totalCalls):
<tr>
<td>
{{callCharges['calls'][item]['called']}}
</td><td>
{{callCharges['calls'][item]['duration']}}
</td><td>
{{callCharges['calls'][item]['cost']}}
</td>
</tr>
%end
</table>
Call charges Total: {{callCharges['total']}}
</p>

<h4>Sky Store Rentals: </h4>
<p>
<table style="width:50%">
<tr><td>Title</td><td>Cost</td></tr>
%totalRentals = len(skyStore['rentals'])
%for item in range(0,totalRentals):
<tr>
<td>
{{skyStore['rentals'][item]['title']}}
</td><td>
{{skyStore['rentals'][item]['cost']}}
</td>
</tr>
%end
</table>
<br>
<table style="width:50%">
<tr><td>Title</td><td>Cost</td></tr>
%totalBuyAndKeep = len(skyStore['buyAndKeep'])
%for item in range(0,totalBuyAndKeep):
<tr>
<td>
{{skyStore['buyAndKeep'][item]['title']}}
</td><td>
{{skyStore['buyAndKeep'][item]['cost']}}
</td>
</tr>
%end
</table>
Sky Store Total: {{skyStore['total']}}
</p>

</body>
</html>

google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
var data = google.visualization.arrayToDataTable([

/*let spend = element.getAttribute('spend');*/
	
  ['종류', '소비액'],
  ['식비', 550000],
  ['쇼핑', 435000],
  ['카페/디저트', 100500],
  ['미용', 250000]
]);

var options = {
  title: '소비 비율',
  width: 300,
  height: 400,
  fontSize: 15, 
  legend : 'none',
  backgroundColor: '#ffccbc',
  is3D: true
};

var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
	chart.draw(data, options);
}
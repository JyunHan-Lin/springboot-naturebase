google.charts.load('current', { 'packages': ['timeline', 'corechart'] });
google.charts.setOnLoadCallback(function() {
	initTimelineChart(); // 圖1
});

// 當日圖表
function initTimelineChart() {
	loadTimelineData(); // 載入當日
}

function loadTimelineData() {
	const el = document.getElementById("timeline-chart");
	if (!el) {
		console.warn("找不到 #timeline-chart，略過圖表載入");
		return;
	}
	const discussId = document.getElementById("timeline-chart").dataset.discussId;

	fetch(`/naturebase/discuss/chart-timeline?discussId=${discussId}`)
		.then(res => res.json())
		.then(data => drawTimeline(data))
		.catch(err => console.error("圖表載入失敗", err));
}

function drawTimeline(data) {
	const container = document.getElementById('timeline-chart');
	const chart = new google.visualization.Timeline(container);
	const dataTable = new google.visualization.DataTable();

	dataTable.addColumn({ type: 'string', id: 'Subject' });
	dataTable.addColumn({ type: 'string', id: 'Action' });
	dataTable.addColumn({ type: 'datetime', id: 'Start' });
	dataTable.addColumn({ type: 'datetime', id: 'End' });


	data.forEach(row => {
		dataTable.addRow([
			row.subject,
			row.action,
			new Date(`1970-01-01T${row.startTime}`),
			new Date(`1970-01-01T${row.endTime}`),
		]);
	});


	const chartOptions = {
		timeline: {
			showRowLabels: true,
		},
		avoidOverlappingGridLines: false,
		hAxis: {
			minValue: new Date("1970-01-01T00:00:00"),
			maxValue: new Date("1970-01-01T23:59:59")
		}
	};

	chart.draw(dataTable, chartOptions);
}
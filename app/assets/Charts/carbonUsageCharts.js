d3.csv("aircraft_parts_data.csv").then(makeChart);

var xValues = [];
var yValues = [];
var barColors = [
  "#F03B3B",
  "#C84DD5",
  "#1CCBA3",
  "#18983E",
  "#2281D4",
  "#1F18EE",
  "#C3EE18",
  "#EE6D18",
  "#EE1818",
  "#FFCCFF",
];

function makeChart(parts) {
  console.log(parts);
  var PartsName = parts
    .map(function (d) {
      return d["Part Name"];
    })
    .slice(0, 10);
  var material_composition = parts
    .map(function (d) {
      return d["Material Composition"];
    })
    .slice(0, 10);
  for (var i = 0; i < 10; i++) {
    PartsName[i] =
      PartsName[i] + `(Material Composition :- ${material_composition[i]})`;
  }
  var Carbon_Consumption_Saved = parts
    .map(function (d) {
      return d["Carbon Footprint Saved (kg CO2e)"];
    })
    .slice(0, 10);
    console.log(Carbon_Consumption_Saved);
  var Carbon_Consumption_For_New_Parts = parts
    .map(function (d) {
      return d["New Parts Carbon Footprint (kg CO2e)"];
    })
    .slice(0, 10);
  xValues = PartsName;
  for (var i = 0; i < 10; i++) {
    yValues[i] =
      (Carbon_Consumption_Saved[i] / Carbon_Consumption_For_New_Parts[i]) * 100;
  }
// console.log(yValues);
  new Chart(document.getElementById('carbonCharts'), {
    type: "horizontalBar",
    data: {
      labels: xValues,
      datasets: [
        {
          backgroundColor: barColors,
          data: yValues,
        },
      ],
    },
    options: {
      // responsive: false,
      //               maintainAspectRatio: false,
        title: {
          display: true,
          text: "% Reduce in Consumption Of Carbon Of Some AirCraft Parts",
          position: "bottom",
          align: "center",
        },
      legend: { display: false },
        scales: {
          xAxes: [{ ticks: { min: 6, max: 100 } }],
          //   {ticks: {min: 40, max:160}}
          yAxes: [{ ticks: { min: 40, max: 160 } }],
        },
    },
  });
}

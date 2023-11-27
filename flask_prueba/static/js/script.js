$(document).ready(function(){
    $(".veen .rgstr-btn button").click(function(){
        $('.veen .wrapper').addClass('move');
        $('.body').css('background','linear-gradient(#1358a6, #321335)');
        $(".veen .login-btn button").removeClass('active');
        $(this).addClass('active');

    }); 
    $(".veen .login-btn button").click(function(){
        $('.veen .wrapper').removeClass('move');
        $('.body').css('background','linear-gradient(#1358a6, #321335)');
        $(".veen .rgstr-btn button").removeClass('active');
        $(this).addClass('active');
    });
});

/*KATIA*/
// SIDEBAR TOGGLE 


// ---------- CHARTS ----------

// BAR CHART
const barChartOptions = {
    series: [
      {
        data: [21, 20],
      },
    ],
    chart: {
      type: 'bar',
      height: 350,
      toolbar: {
        show: false,
      },
    },
    colors: ['#284664', '#6EBEFF'],
    plotOptions: {
      bar: {
        distributed: true,
        borderRadius: 4,
        horizontal: false,
        columnWidth: '40%',
      },
    },
    dataLabels: {
      enabled: false,
    },
    legend: {
      show: false,
    },
    xaxis: {
      categories: ['FREEZO 1', 'FREEZO 2'],
    },
    yaxis: {
      title: {
        text: 'Temperature °C',
      },
    },
};
  
var barChart = new ApexCharts(document.querySelector('#bar-chart'),barChartOptions);
barChart.render();

var areaChart = {
    series: [{
      name: "FREEZO 1",
      data: [25, 25, 21, 18, 35, 24, 23, 25, 27]
  },{
        name: "FREEZO 2",
        data: [21, 22, 21, 24, 19, 19, 19, 20, 25]
    }],
    chart: {
        height: 350,
        type: 'line',
        zoom: {
            enabled: false
        },
        toolbar: {
            show: false,
        },
    },
    colors: ['#284664', '#6EBEFF'],
    dataLabels: {
        enabled: false
    },
    stroke: {
        curve: 'straight'
    },
    xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
    },
    yaxis: {
        title: {
          text: 'Temperature °C',
        },
    }
};

  var areaChart = new ApexCharts(document.querySelector("#area-chart"), areaChart);
  areaChart.render();
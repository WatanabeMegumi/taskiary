document.addEventListener("turbo:load", () => {
  const chartDataTag = document.getElementById("weekly-task-data");
  if (!chartDataTag) return;

  const { labels, data } = JSON.parse(chartDataTag.textContent);
  const ctx = document.getElementById("weekly-task-chart").getContext("2d");

  const weekdays = ["日", "月", "火", "水", "木", "金", "土"];
  const formattedLabels = labels.map((label) => {
    const date = new Date(label);
    const month = date.getMonth() + 1;
    const day = date.getDate();
    const weekday = weekdays[date.getDay()];
    return `${month}/${day}(${weekday})`;
  });

  new Chart(ctx, {
    type: "bar",
    data: {
      labels: formattedLabels, // ← 修正ポイント
      datasets: [{
        label: "日別実測時間（分）",
        data: data,
        backgroundColor: "rgba(0, 179, 166, 0.7)",
        borderRadius: 6,
        barThickness: 30
      }]
    },
    options: {
      plugins: {
        legend: {
          display: true,
          position: "top",
          labels: {
            color: "#555",
            font: {
              size: 12,
              weight: 'bold'
            }
          }
        }
      },
      scales: {
        x: {
          ticks: {
            color: "#555",
            font: {
              size: 12
            }
          },
          grid: {
            display: false
          }
        },
        y: {
          beginAtZero: true,
          ticks: {
            stepSize: 10,
            color: "#555",
            font: {
              size: 12
            }
          },
          grid: {
            color: "#eee"
          }
        }
      }
    }
  });
});

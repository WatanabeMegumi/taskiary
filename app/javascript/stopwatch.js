document.addEventListener("turbo:load", () => {
  const timer = document.getElementById("timer");
  if (!someElement) return;
  const startBtn = document.getElementById("start-btn");
  const pauseBtn = document.getElementById("pause-btn");
  const resumeBtn = document.getElementById("resume-btn");
  const stopForm = document.getElementById("stop-form");
  const actualTimeField = document.getElementById("actual_time_field");

  let startTime = null;
  let elapsed = 0;
  let timerInterval = null;

  updateDisplay(0);
  pauseBtn.style.display = 'none';
  resumeBtn.style.display = 'none';
  stopForm.style.display = 'none';

  function updateDisplay(ms) {
    const totalSec = Math.floor(ms / 1000);
    const h = String(Math.floor(totalSec / 3600)).padStart(2, '0');
    const m = String(Math.floor((totalSec % 3600) / 60)).padStart(2, '0');
    const s = String(totalSec % 60).padStart(2, '0');
    timer.textContent = `${h}:${m}:${s}`;
  }

  function startTimer() {
    startTime = Date.now();
    timerInterval = setInterval(() => {
      elapsed = Date.now() - startTime;
      updateDisplay(elapsed);
    }, 1000);
    startBtn.style.display = 'none';
    pauseBtn.style.display = 'inline';
    resumeBtn.style.display = 'none';
    stopForm.style.display = 'block';
  }

  function pauseTimer() {
    clearInterval(timerInterval);
    pauseBtn.style.display = 'none';
    resumeBtn.style.display = 'inline';
  }

  function resumeTimer() {
    startTime = Date.now() - elapsed;
    timerInterval = setInterval(() => {
      elapsed = Date.now() - startTime;
      updateDisplay(elapsed);
    }, 1000);
    resumeBtn.style.display = 'none';
    pauseBtn.style.display = 'inline';
  }

  function stopTimer() {
    clearInterval(timerInterval);
    const seconds = Math.floor(elapsed / 1000);
    actualTimeField.value = seconds;
  }

  startBtn.addEventListener('click', startTimer);
  pauseBtn.addEventListener('click', pauseTimer);
  resumeBtn.addEventListener('click', resumeTimer);
  stopForm.addEventListener("submit", stopTimer);
});
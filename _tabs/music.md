---
# the default layout is 'page'
icon: fa-solid fa-guitar

order: 3

---


<div class="na-audio">

  <audio class="na-audio__el" preload="auto">
    <source src="/assets/rec/me me she.mp3" type="audio/mp4" />
    Your browser does not support the audio element.
  </audio>

  <div class="na-audio__top">
    <button class="na-audio__btn na-audio__play" type="button" aria-label="Play">▶</button>

    <div class="na-audio__meta">
      <div class="na-audio__title">Anniversary (of becoming a RADWIMPS fan)</div>
     
    </div>

    <button class="na-audio__btn na-audio__mute" type="button" aria-label="Mute">🔊</button>
  </div>

  <div class="na-audio__bar">
    <span class="na-audio__time na-audio__current">0:00</span>
    <input class="na-audio__seek" type="range" min="0" max="1000" value="0" step="1" />
    <span class="na-audio__time na-audio__duration">0:00</span>
  </div>

  <div class="na-audio__bottom">
    <div class="na-audio__pill">
      Speed:
      <button class="na-audio__chip na-audio__speed" type="button" data-speed="1">1.0×</button>
      <button class="na-audio__chip na-audio__speed" type="button" data-speed="1.25">1.25×</button>
      <button class="na-audio__chip na-audio__speed" type="button" data-speed="1.5">1.5×</button>
      <button class="na-audio__chip na-audio__speed" type="button" data-speed="2">2.0×</button>
    </div>

    <div class="na-audio__pill na-audio__volwrap">
      Vol
      <input class="na-audio__vol" type="range" min="0" max="1" step="0.01" value="1" />
    </div>
  </div>
</div>

<style>
  .na-audio{
    --bg: rgba(20, 20, 26, 0.72);
    --bg2: rgba(255, 255, 255, 0.06);
    --border: rgba(255, 255, 255, 0.12);
    --text: rgba(255, 255, 255, 0.92);
    --muted: rgba(255, 255, 255, 0.60);
    --shadow: 0 14px 40px rgba(0,0,0,0.28);
    --radius: 18px;
    --accent: rgba(120, 180, 255, 0.95);

    width: 100%;
    margin: 1rem 0;
    padding: 14px 14px 12px;
    border-radius: var(--radius);
    border: 1px solid var(--border);
    background: linear-gradient(135deg, var(--bg), rgba(10,10,14,0.65));
    box-shadow: var(--shadow);
    backdrop-filter: blur(10px);
  }

  /* Hide native controls but keep the element real and functional */
  .na-audio__el{
    width: 100%;
    height: 0;
    opacity: 0;
    pointer-events: none;
    position: absolute;
  }

  .na-audio__top{ display:flex; align-items:center; gap: 12px; }
  .na-audio__btn{
    width: 46px; height: 46px; border-radius: 14px;
    border: 1px solid var(--border);
    background: linear-gradient(180deg, rgba(255,255,255,0.10), rgba(255,255,255,0.03));
    color: var(--text); cursor: pointer;
    box-shadow: 0 10px 18px rgba(0,0,0,0.20);
    transition: transform 120ms ease;
    flex: 0 0 auto;
  }
  .na-audio__btn:hover{ transform: translateY(-1px); }
  .na-audio__btn:active{ transform: translateY(0px) scale(0.98); }

  .na-audio__meta{ flex:1; min-width:0; }
  .na-audio__title{
    font-weight:700; color: var(--text);
    white-space:nowrap; overflow:hidden; text-overflow:ellipsis;
    line-height:1.1;
  }
  .na-audio__sub{
    margin-top:4px; font-size:12px; color: var(--muted);
    white-space:nowrap; overflow:hidden; text-overflow:ellipsis;
  }

  .na-audio__bar{ display:flex; align-items:center; gap:10px; margin-top:12px; }
  .na-audio__time{
    font-variant-numeric: tabular-nums;
    font-size:12px; color: var(--muted);
    width:42px; text-align:center; flex:0 0 auto;
  }

  .na-audio__seek{
    flex:1; appearance:none; height:10px; border-radius:999px;
    background: linear-gradient(90deg, var(--accent) 0%, rgba(255,255,255,0.12) 0%);
    border:1px solid var(--border); outline:none; cursor:pointer;
  }
  .na-audio__seek::-webkit-slider-thumb{
    appearance:none; width:18px; height:18px; border-radius:50%;
    background: rgba(255,255,255,0.95);
    border: 1px solid rgba(0,0,0,0.2);
    box-shadow: 0 6px 16px rgba(0,0,0,0.35);
  }

  .na-audio__bottom{
    display:flex; align-items:center; justify-content:space-between;
    gap:10px; margin-top:10px; flex-wrap:wrap;
  }
  .na-audio__pill{
    display:flex; align-items:center; gap:8px;
    padding:8px 10px; border-radius:999px;
    border:1px solid var(--border);
    background: var(--bg2); color: var(--muted);
    font-size:12px;
  }
  .na-audio__chip{
    border:1px solid var(--border);
    background: rgba(255,255,255,0.06);
    color: var(--text);
    padding:6px 10px; border-radius:999px;
    cursor:pointer;
  }
  .na-audio__chip.is-active{
    background: rgba(120, 180, 255, 0.20);
    border-color: rgba(120, 180, 255, 0.55);
  }

  .na-audio__volwrap{ gap:10px; }
  .na-audio__vol{
    width:110px; appearance:none; height:8px; border-radius:999px;
    background: rgba(255,255,255,0.12);
    border:1px solid var(--border); outline:none; cursor:pointer;
  }
  .na-audio__vol::-webkit-slider-thumb{
    appearance:none; width:16px; height:16px; border-radius:50%;
    background: rgba(255,255,255,0.95);
    border: 1px solid rgba(0,0,0,0.2);
  }
</style>

<script>
(() => {
  // Enhance ALL players on the page safely
  document.querySelectorAll(".na-audio").forEach(root => {
    if (root.dataset.enhanced === "1") return;
    root.dataset.enhanced = "1";

    const audio = root.querySelector(".na-audio__el");
    const playBtn = root.querySelector(".na-audio__play");
    const muteBtn = root.querySelector(".na-audio__mute");
    const seek = root.querySelector(".na-audio__seek");
    const cur = root.querySelector(".na-audio__current");
    const dur = root.querySelector(".na-audio__duration");
    const vol = root.querySelector(".na-audio__vol");
    const speedBtns = [...root.querySelectorAll(".na-audio__speed")];

    // Helps Safari behave better with custom UI
    audio.setAttribute("playsinline", "");
    audio.controls = false;

    const fmt = (t) => {
      if (!isFinite(t)) return "0:00";
      const m = Math.floor(t / 60);
      const s = Math.floor(t % 60);
      return `${m}:${String(s).padStart(2, "0")}`;
    };

    const setSeekGradient = () => {
      const pct = Number(seek.value) / Number(seek.max);
      seek.style.background =
        `linear-gradient(90deg, var(--accent) ${pct*100}%, rgba(255,255,255,0.12) ${pct*100}%)`;
    };

    const pauseOthers = () => {
      document.querySelectorAll(".na-audio__el").forEach(a => {
        if (a !== audio) a.pause();
      });
    };

    audio.addEventListener("loadedmetadata", () => {
      dur.textContent = fmt(audio.duration);
    });

    audio.addEventListener("timeupdate", () => {
      cur.textContent = fmt(audio.currentTime);
      if (audio.duration) {
        seek.value = String(Math.floor((audio.currentTime / audio.duration) * seek.max));
        setSeekGradient();
      }
    });

    audio.addEventListener("play", () => { playBtn.textContent = "⏸"; });
    audio.addEventListener("pause", () => { playBtn.textContent = "▶"; });

 
    audio.addEventListener("error", () => {
      console.error("Audio error:", audio.currentSrc, audio.error);
    });

    playBtn.addEventListener("click", async () => {
      if (audio.paused) {
        pauseOthers();
        try { await audio.play(); } catch (e) { console.warn(e); }
      } else {
        audio.pause();
      }
    });

    muteBtn.addEventListener("click", () => {
      audio.muted = !audio.muted;
      muteBtn.textContent = audio.muted ? "🔇" : "🔊";
    });

    seek.addEventListener("input", () => {
      setSeekGradient();
      if (audio.duration) {
        audio.currentTime = (Number(seek.value) / Number(seek.max)) * audio.duration;
      }
    });

    vol.addEventListener("input", () => {
      audio.volume = Number(vol.value);
      if (audio.volume === 0) {
        audio.muted = true;
        muteBtn.textContent = "🔇";
      } else {
        audio.muted = false;
        muteBtn.textContent = "🔊";
      }
    });

    speedBtns.forEach(btn => {
      btn.addEventListener("click", () => {
        const sp = Number(btn.dataset.speed);
        audio.playbackRate = sp;
        speedBtns.forEach(b => b.classList.toggle("is-active", b === btn));
      });
    });

    speedBtns[0].classList.add("is-active");
    setSeekGradient();
  });
})();
</script>

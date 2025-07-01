
<div id="customPopupModal" style="display:none;position:fixed;top:0;left:0;width:100vw;height:100vh;z-index:3000;align-items:center;justify-content:center;">
    <div id="customPopupBlurBg" style="position:absolute;top:0;left:0;width:100vw;height:100vh;background:rgba(0,0,0,0.2);backdrop-filter:blur(4px);"></div>
    <div style="position:relative;z-index:2;display:flex;flex-direction:column;align-items:center;justify-content:center;min-width:320px;max-width:90vw;padding:2rem 1.5rem;background:#fff;border-radius:18px;box-shadow:0 8px 32px rgba(0,0,0,0.18);">
        <div id="customPopupIcon" style="font-size:2rem;margin-bottom:0.5rem;"></div>
        <div id="customPopupMsg" style="font-size:1.2rem;font-weight:500;margin-bottom:1.2rem;color:#222;"></div>
        <div style="display:flex;gap:1rem;">
            <button id="customPopupOk" class="btn btn-primary" style="min-width:100px;">OK</button>
        </div>
    </div>
</div>
<script>
function showPopup(msg, redirectUrl) {
    document.getElementById('customModalMsg').textContent = msg;
    document.getElementById('customModal').style.display = 'flex';
    document.getElementById('customModalBtn').onclick = function() {
        if (redirectUrl) {
            window.location.href = redirectUrl;
        } else {
            document.getElementById('customModal').style.display = 'none';
        }
    };
}


</script>
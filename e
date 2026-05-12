<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="theme-color" content="#F5F6FA">
<meta name="apple-mobile-web-app-capable" content="yes">
<title>Prépas Concours AI — Cameroun</title>
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,300&display=swap" rel="stylesheet">
<style>
/* ══ RESET ══ */
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box;-webkit-tap-highlight-color:transparent;}
html,body{height:100%;overflow:hidden;}
body{font-family:'DM Sans',sans-serif;background:var(--bg);color:var(--t1);transition:background .4s,color .4s;}
button,input,select,textarea{font-family:inherit;}

/* ══ LIGHT TOKENS — Default · Blanc cassé premium, sobre ══ */
:root{
  --bg:#F5F6FA;--bg2:#FFFFFF;--bg3:#EEF1F7;
  --surf:#FFFFFF;--surf2:#FAFBFE;
  --b0:rgba(30,41,59,.07);--b1:rgba(30,41,59,.13);--b2:rgba(30,41,59,.22);
  --ind:#4452D9;--ind2:#3B49C9;--ind-g:rgba(68,82,217,.10);
  --cyn:#0BAD9B;--cyn-g:rgba(11,173,155,.10);
  --vio:#7B47E0;--vio-g:rgba(123,71,224,.10);
  --ros:#E14B7A;--ros-g:rgba(225,75,122,.09);
  --amb:#D98412;--amb-g:rgba(217,132,18,.10);
  --grn:#0BAA75;
  --t1:#101828;--t2:#475569;--t3:#94A3B8;
  --sym:rgba(68,82,217,.045);
}
/* ══ DARK THEME — Option ══ */
[data-theme=dark]{
  --bg:#040812;--bg2:#070C1A;--bg3:#0C1428;
  --surf:#101828;--surf2:#141E30;
  --b0:rgba(255,255,255,.05);--b1:rgba(255,255,255,.1);--b2:rgba(255,255,255,.18);
  --ind:#5B6EF5;--ind2:#7B8EFF;--ind-g:rgba(91,110,245,.15);
  --cyn:#18E0CB;--cyn-g:rgba(24,224,203,.13);
  --vio:#9061F9;--vio-g:rgba(144,97,249,.14);
  --ros:#F0618A;--ros-g:rgba(240,97,138,.12);
  --amb:#F5A623;--amb-g:rgba(245,166,35,.12);
  --grn:#0FE3A3;
  --t1:#EEF4FF;--t2:#8897BB;--t3:#3A4A6A;
  --sym:rgba(91,110,245,.035);
}

/* Mesh bg */
body::before{content:'';position:fixed;inset:0;z-index:0;pointer-events:none;
  background:
    radial-gradient(ellipse 80% 50% at 5% 0%,rgba(144,97,249,.18),transparent 55%),
    radial-gradient(ellipse 70% 50% at 95% 5%,rgba(24,224,203,.13),transparent 55%),
    radial-gradient(ellipse 55% 40% at 50% 100%,rgba(91,110,245,.11),transparent 55%);
  animation:msh 22s ease-in-out infinite alternate;}
@keyframes msh{100%{transform:scale(1.04) translate(-1%,.7%);}}

/* Floating math symbols */
.bgsym{position:fixed;inset:0;z-index:0;pointer-events:none;overflow:hidden;}
.sym{position:absolute;font-family:'Syne',sans-serif;font-weight:700;color:var(--sym);user-select:none;animation:fsym 28s ease-in-out infinite;}
.sym:nth-child(1){top:3%;left:6%;font-size:clamp(38px,7vw,70px);animation-delay:0s;}
.sym:nth-child(2){top:10%;right:8%;font-size:clamp(32px,5.5vw,55px);animation-delay:-5s;}
.sym:nth-child(3){top:30%;left:3%;font-size:clamp(28px,5vw,48px);animation-delay:-9s;}
.sym:nth-child(4){top:45%;right:4%;font-size:clamp(42px,8vw,80px);animation-delay:-13s;}
.sym:nth-child(5){top:65%;left:10%;font-size:clamp(34px,6.5vw,62px);animation-delay:-17s;}
.sym:nth-child(6){bottom:6%;right:14%;font-size:clamp(28px,5vw,50px);animation-delay:-21s;}
.sym:nth-child(7){top:20%;left:42%;font-size:clamp(32px,6vw,58px);animation-delay:-7s;}
.sym:nth-child(8){bottom:25%;left:52%;font-size:clamp(36px,7vw,66px);animation-delay:-15s;}
@keyframes fsym{0%,100%{transform:translate(0,0) rotate(0deg);}
  25%{transform:translate(14px,-11px) rotate(5deg);}
  50%{transform:translate(-7px,14px) rotate(-3deg);}
  75%{transform:translate(10px,7px) rotate(2deg);}}

/* ══ VIEWS ══ */
.view{position:fixed;inset:0;z-index:1;display:none;overflow:hidden;}
.view.active{display:flex;}

/* ════════════════════════════════════════
   SVG ICON SYSTEM — Futuristic line icons
════════════════════════════════════════ */
.ico{display:inline-flex;align-items:center;justify-content:center;flex-shrink:0;}
.ico svg{display:block;}

/* ════════════════════════════════════════
   LANDING
════════════════════════════════════════ */
#landing{flex-direction:column;overflow-y:auto;scrollbar-width:thin;scrollbar-color:var(--b1) transparent;}
#landing::-webkit-scrollbar{width:4px;}
#landing::-webkit-scrollbar-thumb{background:var(--b1);border-radius:2px;}
.ln{display:flex;align-items:center;justify-content:space-between;padding:16px 20px;flex-shrink:0;}
.ln-logo{display:flex;align-items:center;gap:10px;}
.lmark{width:34px;height:34px;flex-shrink:0;}
.lmark svg,.sb-lmark svg,.auth-lmark svg{width:100%;height:100%;}
.lr1{animation:rr 8s linear infinite;transform-origin:50px 50px;}
.lr2{animation:rr 5s linear infinite reverse;transform-origin:50px 50px;}
.lc{animation:lcp 2s ease-in-out infinite;transform-origin:50px 50px;}
@keyframes rr{to{transform:rotate(360deg);}}
@keyframes lcp{0%,100%{opacity:.8;}50%{opacity:1;}}
.ln-name{font-family:'Syne',sans-serif;font-size:14px;font-weight:800;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.ln-btns{display:flex;gap:8px;}
.lbtn{padding:8px 16px;border-radius:20px;font-size:13px;font-weight:600;cursor:pointer;transition:all .2s;border:none;}
.lbtn-ghost{background:transparent;color:var(--t2);border:1px solid var(--b1);}
.lbtn-ghost:hover{border-color:var(--b2);color:var(--t1);}
.lbtn-cta{background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;box-shadow:0 4px 14px rgba(91,110,245,.4);}
.lbtn-cta:hover{transform:scale(1.04);}
.hero{padding:40px 20px 30px;text-align:center;max-width:600px;margin:0 auto;}
.hero-badge{display:inline-flex;align-items:center;gap:7px;background:var(--vio-g);border:1px solid rgba(144,97,249,.3);border-radius:20px;padding:6px 14px;font-size:11px;font-weight:600;color:var(--vio);margin-bottom:20px;}
.hbdot{width:6px;height:6px;border-radius:50%;background:var(--vio);animation:bk 2s infinite;}
@keyframes bk{0%,100%{opacity:1;}50%{opacity:.3;}}
.hero-title{font-family:'Syne',sans-serif;font-size:clamp(26px,6.5vw,50px);font-weight:800;line-height:1.12;letter-spacing:-1px;color:var(--t1);margin-bottom:14px;}
.hero-title .hl{background:linear-gradient(135deg,var(--cyn),var(--vio),var(--ros));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.hero-sub{font-size:clamp(13px,3.5vw,16px);color:var(--t2);line-height:1.65;margin-bottom:28px;}
.hero-sub b{color:var(--cyn);}
.hero-acts{display:flex;flex-direction:column;align-items:center;gap:10px;margin-bottom:36px;}
@media(min-width:480px){.hero-acts{flex-direction:row;justify-content:center;}}
.hero-mcta{display:flex;align-items:center;gap:8px;padding:13px 28px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:25px;font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 6px 24px rgba(91,110,245,.45);transition:all .2s;width:100%;max-width:300px;justify-content:center;}
.hero-mcta:hover{transform:translateY(-2px);}
.hero-scta{padding:12px 22px;background:transparent;border:1px solid var(--b1);border-radius:25px;font-size:13px;font-weight:600;color:var(--t2);cursor:pointer;transition:all .2s;width:100%;max-width:260px;}
.hero-scta:hover{border-color:var(--b2);color:var(--t1);}
.preview-wrap{width:100%;max-width:560px;margin:0 auto;padding:0 20px;}
.preview-frame{background:var(--surf);border:1px solid var(--b1);border-radius:16px;overflow:hidden;box-shadow:0 0 60px rgba(91,110,245,.2);}
.pf-bar{display:flex;align-items:center;gap:7px;padding:10px 14px;border-bottom:1px solid var(--b0);background:var(--bg2);}
.pf-dots{display:flex;gap:4px;}.pfd{width:9px;height:9px;border-radius:50%;}
.pfd1{background:#FF5F57;}.pfd2{background:#FEBC2E;}.pfd3{background:#28C840;}
.pf-url{flex:1;background:var(--bg3);border-radius:6px;padding:4px 10px;font-size:10px;color:var(--t3);display:flex;align-items:center;gap:5px;}
.pf-udot{width:7px;height:7px;border-radius:50%;background:var(--grn);}
.pf-body{padding:14px;}
.pf-stats{display:grid;grid-template-columns:repeat(4,1fr);gap:6px;margin-bottom:10px;}
.pf-stat{background:var(--bg3);border-radius:8px;padding:9px 6px;text-align:center;}
.pf-sv{font-family:'Syne',sans-serif;font-size:15px;font-weight:800;display:block;}
.pf-sv.a{color:var(--ind2);}.pf-sv.b{color:var(--cyn);}.pf-sv.c{color:var(--vio);}.pf-sv.d{color:var(--amb);}
.pf-sl{font-size:8px;color:var(--t3);}
.pf-chat{background:var(--bg3);border-radius:10px;padding:10px;}
.pf-msg{padding:7px 10px;border-radius:9px;font-size:10px;margin-bottom:6px;max-width:85%;}
.pf-msg.u{background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;margin-left:auto;}
.pf-msg.b{background:var(--bg2);color:var(--t2);border:1px solid var(--b0);}
.feats-section{padding:50px 20px;max-width:700px;margin:0 auto;}
.sec-label{font-size:11px;font-weight:600;color:var(--cyn);letter-spacing:.1em;text-transform:uppercase;margin-bottom:10px;text-align:center;}
.sec-title{font-family:'Syne',sans-serif;font-size:clamp(22px,5vw,34px);font-weight:800;letter-spacing:-.5px;color:var(--t1);text-align:center;margin-bottom:32px;}
.feats-grid{display:grid;grid-template-columns:1fr;gap:12px;}
@media(min-width:500px){.feats-grid{grid-template-columns:1fr 1fr;}}
.fc{background:var(--surf);border:1px solid var(--b0);border-radius:16px;padding:20px;transition:all .3s;position:relative;overflow:hidden;}
.fc::before{content:'';position:absolute;top:0;left:0;right:0;height:2px;opacity:.6;}
.fc.c1::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.fc.c2::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.fc.c3::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.fc.c4::before{background:linear-gradient(90deg,var(--amb),var(--ros));}
.fc.c5::before{background:linear-gradient(90deg,var(--grn),var(--cyn));}
.fc.c6::before{background:linear-gradient(90deg,var(--ind),var(--vio));}
.fc:hover{border-color:var(--b1);transform:translateY(-3px);}
.fc-ico-wrap{width:40px;height:40px;border-radius:11px;display:flex;align-items:center;justify-content:center;margin-bottom:12px;}
.fc.c1 .fc-ico-wrap{background:var(--ind-g);}
.fc.c2 .fc-ico-wrap{background:var(--cyn-g);}
.fc.c3 .fc-ico-wrap{background:var(--vio-g);}
.fc.c4 .fc-ico-wrap{background:var(--amb-g);}
.fc.c5 .fc-ico-wrap{background:rgba(15,227,163,.12);}
.fc.c6 .fc-ico-wrap{background:var(--ind-g);}
.fc-title{font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:var(--t1);margin-bottom:6px;}
.fc-desc{font-size:12px;color:var(--t2);line-height:1.6;}
.ln-footer{padding:24px 20px;border-top:1px solid var(--b0);display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:8px;font-size:11px;color:var(--t3);}

/* ════════════════════════════════════════
   AUTH
════════════════════════════════════════ */
#auth{align-items:center;justify-content:center;padding:16px;overflow-y:auto;}
.auth-card{width:100%;max-width:420px;background:var(--surf);border:1px solid var(--b1);border-radius:20px;padding:28px 24px;box-shadow:0 20px 60px rgba(0,0,0,.5);animation:cardIn .4s cubic-bezier(.34,1.2,.64,1);}
@keyframes cardIn{from{opacity:0;transform:scale(.94) translateY(12px);}}
.auth-back{display:inline-flex;align-items:center;gap:5px;font-size:12px;color:var(--t3);cursor:pointer;margin-bottom:18px;transition:color .2s;}
.auth-back:hover{color:var(--t1);}
.auth-logo-row{display:flex;align-items:center;gap:9px;justify-content:center;margin-bottom:22px;}
.auth-lmark{width:30px;height:30px;}
.auth-title{font-family:'Syne',sans-serif;font-size:22px;font-weight:800;color:var(--t1);margin-bottom:5px;text-align:center;}
.auth-sub{font-size:12.5px;color:var(--t2);text-align:center;margin-bottom:22px;line-height:1.5;}
.auth-sub b{color:var(--cyn);}
.a-tabs{display:flex;background:var(--bg3);border-radius:10px;padding:3px;margin-bottom:20px;}
.a-tab{flex:1;padding:8px;border-radius:8px;text-align:center;font-size:13px;font-weight:600;cursor:pointer;transition:all .2s;color:var(--t2);}
.a-tab.on{background:var(--surf);color:var(--t1);box-shadow:0 2px 8px rgba(0,0,0,.2);}
.af{display:flex;flex-direction:column;gap:12px;}
.fg{display:flex;flex-direction:column;gap:4px;}
.fl{font-size:11.5px;font-weight:600;color:var(--t2);}
.fi{background:var(--bg3);border:1px solid var(--b1);border-radius:10px;padding:11px 13px;font-size:13px;color:var(--t1);outline:none;transition:all .2s;width:100%;}
.fi:focus{border-color:var(--ind);box-shadow:0 0 0 3px var(--ind-g);}
.fi::placeholder{color:var(--t3);}
.fh{font-size:10.5px;color:var(--t3);}
.fr2{display:grid;grid-template-columns:1fr 1fr;gap:10px;}
.fsel{background:var(--bg3);border:1px solid var(--b1);border-radius:10px;padding:11px 13px;font-size:12.5px;color:var(--t1);outline:none;transition:all .2s;width:100%;appearance:none;background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 24 24' fill='none' stroke='%238897BB' stroke-width='2'%3E%3Cpath d='m6 9 6 6 6-6'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:right 11px center;cursor:pointer;}
.fsel:focus{border-color:var(--ind);box-shadow:0 0 0 3px var(--ind-g);}
.fsel option{background:var(--bg2);}
.a-submit{width:100%;padding:13px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:12px;font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 4px 16px rgba(91,110,245,.4);transition:all .2s;margin-top:4px;}
.a-submit:hover{transform:scale(1.02);}
.a-div{display:flex;align-items:center;gap:10px;font-size:11.5px;color:var(--t3);}
.a-div::before,.a-div::after{content:'';flex:1;height:1px;background:var(--b1);}
.a-goog{width:100%;padding:11px;background:var(--bg3);border:1px solid var(--b1);border-radius:12px;font-size:13px;font-weight:600;color:var(--t1);cursor:pointer;transition:all .2s;display:flex;align-items:center;justify-content:center;gap:8px;}
.a-goog:hover{border-color:var(--b2);}
.a-term{font-size:11px;color:var(--t3);text-align:center;margin-top:12px;line-height:1.5;}
.a-term a{color:var(--ind2);cursor:pointer;}
.sec-bdg{display:flex;align-items:center;justify-content:center;gap:7px;padding:9px;background:rgba(15,227,163,.06);border:1px solid rgba(15,227,163,.2);border-radius:9px;font-size:11px;color:var(--grn);margin-top:14px;font-weight:500;}

/* ════════════════════════════════════════
   CONCOURS SELECTOR
════════════════════════════════════════ */
#cs-view{flex-direction:column;align-items:center;overflow-y:auto;padding:20px 16px 60px;}
.cs-hdr{width:100%;max-width:600px;text-align:center;margin-bottom:22px;}
.cs-back{display:inline-flex;align-items:center;gap:5px;font-size:12px;color:var(--t3);cursor:pointer;margin-bottom:16px;transition:color .2s;}
.cs-back:hover{color:var(--t1);}
.cs-title{font-family:'Syne',sans-serif;font-size:clamp(22px,5.5vw,30px);font-weight:800;color:var(--t1);margin-bottom:7px;}
.cs-title span{background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.cs-sub{font-size:13px;color:var(--t2);}
.cs-grid{width:100%;max-width:600px;display:grid;grid-template-columns:repeat(2,1fr);gap:12px;margin-bottom:22px;}
@media(min-width:480px){.cs-grid{grid-template-columns:repeat(3,1fr);}}
.csc{background:var(--surf);border:1.5px solid var(--b0);border-radius:14px;padding:16px 14px;cursor:pointer;transition:all .25s;position:relative;overflow:hidden;}
.csc::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;}
.csc.ca::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.csc.cb::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.csc.cc::before{background:linear-gradient(90deg,var(--grn),var(--amb));}
.csc.cd::before{background:linear-gradient(90deg,var(--amb),var(--ros));}
.csc.ce::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.csc.cf::before{background:linear-gradient(90deg,var(--ros),var(--ind));}
.csc:hover,.csc.sel{border-color:var(--b1);transform:translateY(-2px);}
.csc.sel{border-color:var(--cyn);box-shadow:0 0 0 2px var(--cyn-g);}
.csc-chk{display:none;position:absolute;top:9px;right:9px;width:20px;height:20px;border-radius:50%;background:var(--cyn);color:#000;font-size:10px;font-weight:800;align-items:center;justify-content:center;}
.csc.sel .csc-chk{display:flex;}
.csc-ico{width:36px;height:36px;border-radius:10px;display:flex;align-items:center;justify-content:center;margin-bottom:8px;}
.csc.ca .csc-ico{background:var(--ind-g);}
.csc.cb .csc-ico{background:var(--cyn-g);}
.csc.cc .csc-ico{background:rgba(15,227,163,.12);}
.csc.cd .csc-ico{background:var(--amb-g);}
.csc.ce .csc-ico{background:var(--vio-g);}
.csc.cf .csc-ico{background:var(--ros-g);}
.csc-code{font-family:'Syne',sans-serif;font-size:16px;font-weight:900;color:var(--t1);margin-bottom:2px;}
.csc-nm{font-size:10px;color:var(--t3);margin-bottom:8px;}
.csc-cnt{font-size:9.5px;font-weight:700;padding:2px 8px;border-radius:20px;}
.csc.ca .csc-cnt{background:var(--ind-g);color:var(--ind2);}
.csc.cb .csc-cnt{background:var(--cyn-g);color:var(--cyn);}
.csc.cc .csc-cnt{background:rgba(15,227,163,.12);color:var(--grn);}
.csc.cd .csc-cnt{background:var(--amb-g);color:var(--amb);}
.csc.ce .csc-cnt{background:var(--vio-g);color:var(--vio);}
.csc.cf .csc-cnt{background:var(--ros-g);color:var(--ros);}
.cs-cta{padding:12px 32px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:25px;font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 4px 16px rgba(91,110,245,.4);transition:all .2s;}
.cs-cta:disabled{opacity:.4;cursor:not-allowed;}
.cs-cta:not(:disabled):hover{transform:scale(1.04);}
.cs-skip{margin-top:10px;font-size:12px;color:var(--t3);cursor:pointer;transition:color .2s;}
.cs-skip:hover{color:var(--t1);}

/* ════════════════════════════════════════
   WIZARD
════════════════════════════════════════ */
#wiz-view{flex-direction:column;align-items:center;justify-content:center;padding:16px;overflow-y:auto;}
.wiz-card{width:100%;max-width:500px;background:var(--surf);border:1px solid var(--b1);border-radius:20px;padding:24px;box-shadow:0 20px 60px rgba(0,0,0,.5);}
.wiz-prog{display:flex;align-items:center;gap:0;margin-bottom:24px;}
.ws-dot{width:28px;height:28px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:11px;font-weight:700;background:var(--bg3);color:var(--t3);border:2px solid var(--b1);transition:all .3s;flex-shrink:0;}
.ws-dot.done{background:var(--cyn);border-color:var(--cyn);color:#000;}
.ws-dot.act{background:var(--ind-g);border-color:var(--ind);color:var(--ind2);}
.ws-line{flex:1;height:2px;background:var(--b1);}
.ws-line.done{background:linear-gradient(90deg,var(--cyn),var(--ind));}
.wiz-q{font-family:'Syne',sans-serif;font-size:17px;font-weight:700;color:var(--t1);margin-bottom:5px;}
.wiz-hint{font-size:12px;color:var(--t2);margin-bottom:16px;line-height:1.5;}
.wiz-opts{display:grid;grid-template-columns:1fr 1fr;gap:8px;margin-bottom:16px;}
.wo{padding:11px;background:var(--bg3);border:1.5px solid var(--b0);border-radius:10px;text-align:center;cursor:pointer;font-size:12px;color:var(--t2);font-weight:600;transition:all .2s;}
.wo:hover,.wo.sel{border-color:var(--cyn);color:var(--t1);background:rgba(24,224,203,.07);}
.wo.sel{background:rgba(24,224,203,.1);}
.wiz-inp{width:100%;background:var(--bg3);border:1px solid var(--b1);border-radius:10px;padding:11px 13px;font-size:13px;color:var(--t1);outline:none;transition:all .2s;margin-bottom:16px;}
.wiz-inp:focus{border-color:var(--ind);box-shadow:0 0 0 3px var(--ind-g);}
.wiz-inp::placeholder{color:var(--t3);}
.wiz-nav{display:flex;gap:9px;}
.wiz-prev{padding:10px 18px;background:transparent;border:1px solid var(--b1);border-radius:10px;font-size:13px;font-weight:600;color:var(--t2);cursor:pointer;transition:all .2s;}
.wiz-prev:hover{border-color:var(--b2);color:var(--t1);}
.wiz-next{flex:1;padding:11px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:10px;font-family:'Syne',sans-serif;font-size:13px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 4px 12px rgba(91,110,245,.35);transition:all .2s;}
.wiz-next:hover{transform:scale(1.02);}

/* ════════════════════════════════════════
   MAIN APP
════════════════════════════════════════ */
#app{flex-direction:column;}

/* PWA Banner */
.pwa-banner{flex-shrink:0;display:flex;align-items:center;gap:10px;padding:10px 16px;background:linear-gradient(135deg,rgba(91,110,245,.15),rgba(24,224,203,.1));border-bottom:1px solid rgba(91,110,245,.25);animation:bIn .5s ease both;position:relative;z-index:10;}
@keyframes bIn{from{opacity:0;transform:translateY(-8px);}}
.pwa-icon{font-size:20px;flex-shrink:0;}
.pwa-text{flex:1;}
.pwa-title{font-size:12.5px;font-weight:700;color:var(--t1);}
.pwa-sub{font-size:10.5px;color:var(--t2);}
.pwa-btn{padding:7px 14px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:20px;font-size:11.5px;font-weight:700;color:#fff;cursor:pointer;white-space:nowrap;flex-shrink:0;transition:all .2s;}
.pwa-btn:hover{transform:scale(1.04);}
.pwa-x{width:24px;height:24px;background:none;border:1px solid var(--b1);border-radius:6px;color:var(--t3);font-size:13px;cursor:pointer;display:flex;align-items:center;justify-content:center;flex-shrink:0;transition:all .2s;}
.pwa-x:hover{border-color:var(--b2);color:var(--t1);}

/* App body */
.app-body{flex:1;display:flex;overflow:hidden;min-height:0;position:relative;}

/* ── SIDEBAR ── */
.sidebar{width:258px;min-width:258px;background:var(--bg2);border-right:1px solid var(--b0);display:flex;flex-direction:column;height:100%;overflow:hidden;flex-shrink:0;position:relative;transition:transform .3s cubic-bezier(.4,0,.2,1);}
.sidebar::after{content:'';position:absolute;top:0;right:0;width:1px;height:100%;background:linear-gradient(180deg,transparent,rgba(144,97,249,.2),transparent);pointer-events:none;}
@media(max-width:768px){
  .sidebar{position:absolute;top:0;left:0;bottom:0;z-index:200;transform:translateX(-100%);box-shadow:0 20px 60px rgba(0,0,0,.5);}
  .sidebar.open{transform:translateX(0);}
  .sb-overlay{display:none;position:absolute;inset:0;background:rgba(0,0,0,.6);z-index:199;backdrop-filter:blur(4px);}
  .sb-overlay.show{display:block;}
}
.sb-top{display:flex;align-items:center;justify-content:space-between;padding:16px 14px 14px;border-bottom:1px solid var(--b0);flex-shrink:0;}
.sb-logo-row{display:flex;align-items:center;gap:9px;}
.sb-lmark{width:32px;height:32px;flex-shrink:0;}
.sb-app-name{font-family:'Syne',sans-serif;font-size:13px;font-weight:800;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.sb-app-sub{font-size:9px;color:var(--t3);text-transform:uppercase;letter-spacing:.06em;}
.sb-top-actions{display:flex;gap:5px;align-items:center;}
.sb-theme-btn{width:28px;height:28px;background:var(--bg3);border:1px solid var(--b1);border-radius:7px;display:flex;align-items:center;justify-content:center;cursor:pointer;transition:all .2s;flex-shrink:0;}
.sb-theme-btn:hover{border-color:var(--cyn);}
.sb-close-btn{display:none;width:26px;height:26px;background:var(--bg3);border:1px solid var(--b1);border-radius:7px;align-items:center;justify-content:center;cursor:pointer;color:var(--t2);flex-shrink:0;}
@media(max-width:768px){.sb-close-btn{display:flex;}}
.sb-upg{margin:12px 12px 8px;padding:12px 13px;background:linear-gradient(135deg,var(--vio-g),var(--cyn-g));border:1px solid rgba(144,97,249,.25);border-radius:12px;cursor:pointer;transition:all .3s;position:relative;overflow:hidden;flex-shrink:0;}
.sb-upg::before{content:'';position:absolute;top:0;left:-130%;width:60%;height:100%;background:linear-gradient(90deg,transparent,rgba(255,255,255,.07),transparent);animation:shn 3s ease-in-out infinite;}
@keyframes shn{50%{left:160%;}100%{left:160%;}}
.sb-upg:hover{border-color:var(--vio);}
.sb-upg-row{display:flex;align-items:center;gap:9px;}
.sb-upg-ic{width:28px;height:28px;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:8px;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 12px rgba(144,97,249,.35);flex-shrink:0;}
.sb-upg-t{font-size:12px;font-weight:700;color:var(--t1);}
.sb-upg-s{font-size:10px;color:var(--t3);}
.sb-nav{flex:1;padding:8px 10px;overflow-y:auto;scrollbar-width:none;}
.sb-nav::-webkit-scrollbar{display:none;}
.sb-sec{font-size:9.5px;font-weight:600;color:var(--t3);letter-spacing:.1em;text-transform:uppercase;padding:12px 8px 6px;}
.sbi{display:flex;align-items:center;gap:10px;padding:9px 10px;border-radius:10px;cursor:pointer;color:var(--t2);font-size:12.5px;font-weight:500;margin-bottom:1px;transition:all .2s;position:relative;}
.sbi:hover{background:var(--bg3);color:var(--t1);}
.sbi.on{background:linear-gradient(90deg,rgba(24,224,203,.1),transparent);color:var(--cyn);font-weight:600;}
.sbi.on::before{content:'';position:absolute;left:0;top:7px;bottom:7px;width:3px;background:linear-gradient(180deg,var(--cyn),var(--vio));border-radius:2px;}
.sbi-ic{width:20px;height:20px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.sbi-ic svg{width:16px;height:16px;stroke:currentColor;fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.sbi-bg{margin-left:auto;font-size:9px;font-weight:700;background:rgba(24,224,203,.12);color:var(--cyn);padding:2px 7px;border-radius:20px;}
.sb-foot{padding:10px;border-top:1px solid var(--b0);flex-shrink:0;}
.sb-user{display:flex;align-items:center;gap:9px;padding:9px 10px;border-radius:10px;cursor:pointer;transition:all .2s;}
.sb-user:hover{background:var(--bg3);}
.sb-uav{width:32px;height:32px;flex-shrink:0;background:linear-gradient(135deg,var(--ind),var(--vio));border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:13px;box-shadow:0 0 10px rgba(144,97,249,.3);}
.sb-unm{font-size:12.5px;font-weight:600;color:var(--t1);}
.sb-upl{font-size:9px;color:var(--cyn);font-weight:600;display:flex;align-items:center;gap:3px;margin-top:1px;}
.sb-udot{width:5px;height:5px;border-radius:50%;background:var(--cyn);box-shadow:0 0 5px var(--cyn);animation:ud 2s infinite;}
@keyframes ud{0%,100%{opacity:1;}50%{opacity:.3;}}
.sb-settings{margin-left:auto;width:26px;height:26px;background:var(--bg3);border:1px solid var(--b1);border-radius:7px;display:flex;align-items:center;justify-content:center;cursor:pointer;transition:all .2s;}
.sb-settings svg{width:14px;height:14px;stroke:var(--t3);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;transition:stroke .2s;}
.sb-settings:hover{border-color:var(--cyn);}
.sb-settings:hover svg{stroke:var(--cyn);}

/* ── MAIN AREA ── */
.main-area{flex:1;min-width:0;display:flex;flex-direction:column;height:100%;overflow:hidden;}
.mob-topbar{display:none;align-items:center;justify-content:space-between;padding:12px 16px;border-bottom:1px solid var(--b1);background:rgba(255,255,255,.92);backdrop-filter:blur(20px);flex-shrink:0;gap:10px;}
[data-theme=dark] .mob-topbar{background:rgba(4,8,18,.7);border-bottom-color:var(--b0);}
@media(max-width:768px){.mob-topbar{display:flex;}}
.mob-menu{width:34px;height:34px;background:var(--surf);border:1px solid var(--b1);border-radius:9px;display:flex;align-items:center;justify-content:center;cursor:pointer;transition:all .2s;flex-shrink:0;}
.mob-menu svg{width:16px;height:16px;stroke:var(--t1);fill:none;stroke-width:1.8;stroke-linecap:round;}
.mob-menu:hover{border-color:var(--b2);}
.mob-title{font-family:'Syne',sans-serif;font-size:15px;font-weight:700;color:var(--t1);flex:1;min-width:0;display:flex;align-items:center;gap:7px;}
.mob-title-ico{width:20px;height:20px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.mob-title-ico svg{width:17px;height:17px;stroke:var(--cyn);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.mob-r{display:flex;gap:7px;align-items:center;}
.mob-timer-btn{display:flex;align-items:center;gap:5px;background:rgba(245,166,35,.08);border:1px solid rgba(245,166,35,.25);border-radius:20px;padding:5px 11px;font-size:11px;font-weight:700;color:var(--amb);cursor:pointer;font-family:'DM Sans',monospace;white-space:nowrap;}
.mob-timer-btn.run{animation:tmrP 2s infinite;}
@keyframes tmrP{0%,100%{box-shadow:0 0 0 0 rgba(245,166,35,.3);}50%{box-shadow:0 0 0 5px rgba(245,166,35,0);}}
.desk-topbar{display:flex;align-items:center;justify-content:space-between;padding:13px 22px;border-bottom:1px solid var(--b1);background:rgba(255,255,255,.92);backdrop-filter:blur(20px);flex-shrink:0;gap:10px;}
[data-theme=dark] .desk-topbar{background:rgba(4,8,18,.6);border-bottom-color:var(--b0);}
@media(max-width:768px){.desk-topbar{display:none;}}
.dt-l{display:flex;align-items:center;gap:10px;min-width:0;}
.dt-title{font-size:16px;font-weight:700;color:var(--t1);display:flex;align-items:center;gap:8px;white-space:nowrap;}
.dt-title-ico{width:22px;height:22px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.dt-title-ico svg{width:18px;height:18px;stroke:var(--cyn);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.dt-r{display:flex;gap:8px;align-items:center;flex-shrink:0;}
.dt-timer{display:flex;align-items:center;gap:6px;background:rgba(245,166,35,.08);border:1px solid rgba(245,166,35,.25);border-radius:20px;padding:5px 13px;font-size:11px;font-weight:700;color:var(--amb);cursor:pointer;font-family:'DM Sans',monospace;white-space:nowrap;transition:all .2s;}
.dt-timer:hover{background:rgba(245,166,35,.14);}
.dt-timer.run{animation:tmrP 2s infinite;}
.dt-upg{display:flex;align-items:center;gap:5px;padding:7px 14px;background:linear-gradient(135deg,var(--vio),var(--cyn));border:none;border-radius:20px;font-size:11.5px;font-weight:700;color:#fff;cursor:pointer;font-family:'Syne',sans-serif;box-shadow:0 4px 12px rgba(144,97,249,.4);transition:all .2s;white-space:nowrap;}
.dt-upg:hover{transform:scale(1.04);}

/* Panes */
.app-pane{flex:1;overflow-y:auto;display:none;scrollbar-width:thin;scrollbar-color:var(--b1) transparent;}
.app-pane.on{display:block;}
.app-pane::-webkit-scrollbar{width:5px;}
.app-pane::-webkit-scrollbar-thumb{background:var(--b1);border-radius:3px;}
.app-pane-chat{flex:1;display:none;flex-direction:column;overflow:hidden;min-height:0;}
.app-pane-chat.on{display:flex;}
.pad{padding:16px;max-width:980px;}
@media(min-width:769px){.pad{padding:20px 22px;}}

/* ── REUSABLE COMPONENTS ── */
.welcome{display:flex;align-items:center;gap:14px;background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-radius:16px;padding:16px;margin-bottom:16px;position:relative;overflow:hidden;}
.welcome::before{content:'';position:absolute;top:-50%;right:-8%;width:220px;height:220px;background:radial-gradient(circle,rgba(144,97,249,.14),transparent 60%);animation:wAn 8s ease-in-out infinite;pointer-events:none;}
@keyframes wAn{50%{transform:translate(-12px,12px) scale(1.1);}}
.w-av{width:46px;height:46px;flex-shrink:0;z-index:1;background:linear-gradient(135deg,var(--ind),var(--vio));border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:20px;box-shadow:0 5px 18px rgba(144,97,249,.4);position:relative;}
.w-av::after{content:'';position:absolute;inset:-3px;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:50%;z-index:-1;opacity:.6;filter:blur(7px);animation:wAura 3s ease-in-out infinite;}
@keyframes wAura{50%{filter:blur(12px);opacity:.9;}}
.w-info{flex:1;z-index:1;min-width:0;}
.w-hi{font-size:11.5px;color:var(--t2);margin-bottom:2px;}
.w-nm{font-family:'Syne',sans-serif;font-size:clamp(17px,4.5vw,21px);font-weight:800;letter-spacing:-.4px;}
.w-nm span{background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.w-sub{font-size:11.5px;color:var(--t2);margin-top:3px;}
.w-sub b{color:var(--cyn);font-family:'DM Sans',monospace;}
.w-streak{z-index:1;display:flex;align-items:center;gap:7px;flex-shrink:0;background:rgba(245,166,35,.1);border:1px solid rgba(245,166,35,.3);border-radius:11px;padding:8px 12px;}
.wsf{font-size:20px;animation:wsfl 1.5s ease-in-out infinite;}
@keyframes wsfl{50%{transform:scale(1.15) rotate(5deg);}}
.wsn{font-family:'Syne',sans-serif;font-size:15px;font-weight:800;color:var(--amb);}
.wsl{font-size:8.5px;color:var(--t3);text-transform:uppercase;}
.rank-card{background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-radius:14px;padding:16px;margin-bottom:16px;position:relative;overflow:hidden;}
.rank-card::before{content:'';position:absolute;top:-40%;right:-8%;width:180px;height:180px;background:radial-gradient(circle,rgba(144,97,249,.1),transparent 60%);pointer-events:none;}
.rk-hd{display:flex;align-items:center;gap:10px;margin-bottom:12px;position:relative;}
.rk-ic{width:38px;height:38px;flex-shrink:0;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:18px;box-shadow:0 4px 12px rgba(144,97,249,.35);}
.rk-lbl{font-size:9px;color:var(--t3);text-transform:uppercase;letter-spacing:.05em;}
.rk-nm{font-family:'Syne',sans-serif;font-size:18px;font-weight:800;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.rk-bar{height:7px;background:var(--bg3);border-radius:10px;overflow:hidden;margin-bottom:7px;}
.rk-fill{height:100%;width:62%;background:linear-gradient(90deg,var(--cyn),var(--vio),var(--ros));border-radius:10px;animation:rkF 1.5s ease-out;position:relative;}
@keyframes rkF{from{width:0;}}
.rk-fill::after{content:'';position:absolute;top:0;right:0;width:30%;height:100%;background:linear-gradient(90deg,transparent,rgba(255,255,255,.4));animation:rkS 2.5s ease-in-out infinite;}
@keyframes rkS{0%,100%{opacity:.3;}50%{opacity:.7;}}
.rk-meta{display:flex;justify-content:space-between;font-size:10.5px;}
.rk-pts{color:var(--cyn);font-weight:700;}
.rk-nxt{color:var(--t3);}
.rk-nxt b{color:var(--vio);}
.stats-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:10px;margin-bottom:16px;}
@media(min-width:500px){.stats-grid{grid-template-columns:repeat(4,1fr);}}
.sc{background:var(--surf);border:1px solid var(--b0);border-radius:13px;padding:14px 12px;transition:all .25s;position:relative;overflow:hidden;}
.sc::before{content:'';position:absolute;top:0;left:0;right:0;height:2px;background:linear-gradient(90deg,transparent,var(--cyn),transparent);opacity:.4;}
.sc:hover{border-color:var(--b1);}
.sc-i{font-size:18px;display:block;margin-bottom:7px;}
.sc-v{font-family:'Syne',sans-serif;font-size:clamp(20px,5vw,26px);font-weight:800;display:block;line-height:1;margin-bottom:2px;}
.sc-v.a{background:linear-gradient(135deg,var(--ind),var(--cyn));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.sc-v.b{color:var(--cyn);}.sc-v.c{color:var(--vio);}.sc-v.d{color:var(--amb);}
.sc-k{font-size:9.5px;color:var(--t3);text-transform:uppercase;letter-spacing:.05em;}
.wk-card{background:linear-gradient(135deg,rgba(240,97,138,.08),rgba(144,97,249,.05));border:1px solid rgba(240,97,138,.25);border-radius:14px;padding:16px;margin-bottom:16px;}
.wk-hd{display:flex;align-items:center;gap:10px;margin-bottom:10px;}
.wk-ic{width:38px;height:38px;flex-shrink:0;background:linear-gradient(135deg,var(--ros),var(--vio));border-radius:10px;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 12px rgba(240,97,138,.35);}
.wk-ic svg{width:18px;height:18px;stroke:#fff;fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.wk-ttl{font-size:13px;font-weight:700;color:var(--t1);}
.wk-sub{font-size:10px;color:var(--t3);}
.wk-alert{background:rgba(240,97,138,.08);border:1px solid rgba(240,97,138,.3);border-radius:10px;padding:12px;}
.wk-pct{font-family:'Syne',sans-serif;font-size:16px;font-weight:800;color:var(--ros);margin-right:4px;}
.wk-txt{font-size:12.5px;color:var(--t1);line-height:1.55;}
.wk-txt b{color:var(--ros);}
.wk-cta{display:inline-flex;align-items:center;gap:5px;margin-top:9px;font-size:11px;color:var(--ros);font-weight:700;background:rgba(240,97,138,.12);border:1px solid rgba(240,97,138,.3);border-radius:20px;padding:5px 12px;cursor:pointer;transition:all .2s;}
.wk-cta:hover{background:var(--ros);color:#fff;}
.g2{display:grid;grid-template-columns:1fr;gap:14px;margin-bottom:16px;}
@media(min-width:600px){.g2{grid-template-columns:1.2fr 1fr;}}
.col-r{display:flex;flex-direction:column;gap:12px;}
.pl-card{background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-radius:14px;padding:16px;}
.pl-hd{display:flex;align-items:center;gap:9px;margin-bottom:13px;}
.pl-ic{width:34px;height:34px;flex-shrink:0;background:linear-gradient(135deg,var(--cyn),var(--vio));border-radius:10px;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 12px rgba(24,224,203,.3);}
.pl-ic svg{width:17px;height:17px;stroke:#fff;fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.pl-ttl{font-size:13px;font-weight:700;color:var(--t1);}
.pl-sub2{font-size:10px;color:var(--t3);}
.pl-item{display:flex;align-items:center;gap:9px;padding:9px;background:var(--bg3);border:1px solid var(--b0);border-radius:9px;margin-bottom:7px;cursor:pointer;transition:all .2s;}
.pl-item:hover{border-color:var(--cyn);}
.pl-item.done{opacity:.5;}
.pl-item.now{border-color:var(--vio);background:rgba(144,97,249,.05);}
.pl-cb{width:17px;height:17px;border-radius:50%;border:2px solid var(--b1);display:flex;align-items:center;justify-content:center;font-size:8.5px;flex-shrink:0;}
.pl-item.done .pl-cb{background:var(--grn);border-color:var(--grn);color:#000;}
.pl-item.now .pl-cb::after{content:'●';color:var(--vio);font-size:7.5px;}
.pl-d{font-size:11.5px;font-weight:600;color:var(--t1);flex:1;}
.pl-item.done .pl-d{text-decoration:line-through;color:var(--t3);}
.pl-t2{font-size:9px;color:var(--t3);}
.pl-tag{font-size:9px;font-weight:700;padding:2px 7px;border-radius:20px;flex-shrink:0;}
.pl-tag.c{background:var(--cyn-g);color:var(--cyn);}
.pl-tag.v{background:var(--vio-g);color:var(--vio);}
.pl-tag.a{background:var(--amb-g);color:var(--amb);}
.pl-more{font-size:11px;color:var(--cyn);text-align:center;margin-top:6px;cursor:pointer;}
.q-card{background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-left:3px solid var(--vio);border-radius:13px;padding:15px;position:relative;}
.q-mk{font-family:Georgia,serif;font-size:42px;line-height:1;color:var(--vio);opacity:.2;position:absolute;top:4px;left:11px;}
.q-txt{font-size:12px;color:var(--t2);font-style:italic;line-height:1.6;margin:6px 0 8px;padding-left:5px;}
.q-by{font-size:10px;color:var(--vio);font-weight:600;display:flex;align-items:center;gap:5px;}
.q-by::before{content:'';width:13px;height:1px;background:var(--vio);}
.q-btn{margin-top:9px;display:inline-flex;align-items:center;gap:4px;font-size:10px;color:var(--vio);background:rgba(144,97,249,.1);border:1px solid rgba(144,97,249,.2);border-radius:20px;padding:4px 10px;cursor:pointer;font-weight:600;transition:all .2s;}
.q-btn:hover{background:rgba(144,97,249,.2);}
.mc-card{background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-radius:13px;padding:13px;display:flex;align-items:center;gap:9px;cursor:pointer;transition:all .2s;}
.mc-card:hover{border-color:var(--b1);}
.mc-disc{width:34px;height:34px;flex-shrink:0;background:linear-gradient(135deg,#1A2E5F,var(--cyn));border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:14px;box-shadow:0 4px 10px rgba(24,224,203,.25);}
.mc-disc.spin{animation:dsp 8s linear infinite;}
@keyframes dsp{to{transform:rotate(360deg);}}
.mc-inf{flex:1;min-width:0;}
.mc-t{font-size:12px;font-weight:600;color:var(--t1);}
.mc-s{font-size:10px;color:var(--t3);margin-top:1px;}
.mc-waves{display:flex;align-items:flex-end;gap:2px;height:15px;}
.wb{width:3px;border-radius:2px;background:var(--cyn);}
.wb:nth-child(1){height:4px;}.wb:nth-child(2){height:10px;}.wb:nth-child(3){height:6px;}.wb:nth-child(4){height:13px;}.wb:nth-child(5){height:5px;}
.wb.a{animation:wbA 1.1s ease-in-out infinite;}
.wb:nth-child(2).a{animation-delay:.15s;}.wb:nth-child(3).a{animation-delay:.3s;}.wb:nth-child(4).a{animation-delay:.45s;}.wb:nth-child(5).a{animation-delay:.6s;}
@keyframes wbA{0%,100%{transform:scaleY(.4);}50%{transform:scaleY(1.4);}}
.mc-pbtn{width:30px;height:30px;flex-shrink:0;background:linear-gradient(135deg,var(--cyn),var(--vio));border:none;border-radius:50%;cursor:pointer;display:flex;align-items:center;justify-content:center;font-size:11px;color:#fff;box-shadow:0 4px 10px rgba(24,224,203,.3);transition:all .2s;}
.mc-pbtn:hover{transform:scale(1.1);}
.qa-row{display:grid;grid-template-columns:1fr;gap:9px;margin-bottom:16px;}
@media(min-width:500px){.qa-row{grid-template-columns:repeat(3,1fr);}}
.qa-btn{background:var(--surf);border:1px solid var(--b0);border-radius:12px;padding:12px;cursor:pointer;transition:all .25s;display:flex;align-items:center;gap:8px;text-align:left;}
.qa-btn:hover{border-color:var(--b1);transform:translateY(-2px);}
.qa-ico{width:26px;height:26px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.qa-ico svg{width:18px;height:18px;stroke:var(--cyn);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.qa-h{font-size:12px;font-weight:600;color:var(--t1);}
.qa-d{font-size:10px;color:var(--t3);margin-top:1px;}
.sh{display:flex;align-items:center;justify-content:space-between;margin-bottom:11px;}
.sh-l{font-size:10px;font-weight:600;color:var(--t3);letter-spacing:.1em;text-transform:uppercase;}
.sh-r{font-size:11px;color:var(--cyn);font-weight:600;cursor:pointer;}
.cc-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:11px;}
@media(min-width:600px){.cc-grid{grid-template-columns:repeat(3,1fr);}}
.cc{background:var(--surf);border:1px solid var(--b0);border-radius:13px;padding:16px 14px;cursor:pointer;transition:all .25s;position:relative;overflow:hidden;}
.cc::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;}
.cc.a::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.cc.b::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.cc.c::before{background:linear-gradient(90deg,var(--grn),var(--amb));}
.cc.d::before{background:linear-gradient(90deg,var(--amb),var(--ros));}
.cc.e::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.cc.f::before{background:linear-gradient(90deg,var(--ros),var(--ind));}
.cc:hover{transform:translateY(-3px);border-color:var(--b1);}
.cc-code{font-family:'Syne',sans-serif;font-size:18px;font-weight:900;color:var(--t1);margin-bottom:2px;letter-spacing:-.4px;}
.cc-name{font-size:10px;color:var(--t3);margin-bottom:10px;}
.cc-meta{display:flex;justify-content:space-between;align-items:center;}
.cc-cnt{font-size:9.5px;font-weight:700;padding:3px 8px;border-radius:20px;}
.cc.a .cc-cnt{background:var(--ind-g);color:var(--ind2);}
.cc.b .cc-cnt{background:var(--cyn-g);color:var(--cyn);}
.cc.c .cc-cnt{background:rgba(15,227,163,.12);color:var(--grn);}
.cc.d .cc-cnt{background:var(--amb-g);color:var(--amb);}
.cc.e .cc-cnt{background:var(--vio-g);color:var(--vio);}
.cc.f .cc-cnt{background:var(--ros-g);color:var(--ros);}
.proj-grid{display:grid;grid-template-columns:1fr;gap:11px;}
@media(min-width:500px){.proj-grid{grid-template-columns:1fr 1fr;}}
.pj{background:var(--surf);border:1px solid var(--b0);border-radius:14px;padding:16px;cursor:pointer;transition:all .25s;position:relative;overflow:hidden;}
.pj::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;}
.pj.pa::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.pj.pb::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.pj.pc::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.pj:hover{border-color:var(--b1);transform:translateY(-3px);}
.pj-ico{font-size:24px;margin-bottom:9px;display:block;}
.pj-nm{font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:var(--t1);margin-bottom:3px;}
.pj-desc{font-size:11.5px;color:var(--t2);line-height:1.55;margin-bottom:10px;}
.pj-meta{display:flex;align-items:center;gap:7px;}
.pj-tag{font-size:10px;font-weight:700;padding:3px 9px;border-radius:20px;}
.pj.pa .pj-tag{background:var(--ind-g);color:var(--ind2);}
.pj.pb .pj-tag{background:var(--cyn-g);color:var(--cyn);}
.pj.pc .pj-tag{background:var(--vio-g);color:var(--vio);}
.pj-date{font-size:10px;color:var(--t3);}
.new-pj-btn{display:flex;align-items:center;gap:7px;padding:9px 18px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:20px;font-size:12.5px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 4px 12px rgba(91,110,245,.35);transition:all .2s;margin-bottom:16px;}
.new-pj-btn:hover{transform:scale(1.04);}
.pg-card{background:var(--surf);border:1px solid var(--b0);border-radius:13px;padding:16px;margin-bottom:10px;}
.pg-hd{display:flex;justify-content:space-between;align-items:center;margin-bottom:10px;}
.pg-nm{font-size:13px;font-weight:600;color:var(--t1);}
.pg-pc{font-family:'Syne',sans-serif;font-size:16px;font-weight:800;}
.pg-pc.a{background:linear-gradient(135deg,var(--ind),var(--cyn));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.pg-pc.b{color:var(--cyn);}.pg-pc.c{color:var(--amb);}
.pg-bar{height:6px;background:var(--bg3);border-radius:10px;overflow:hidden;margin-bottom:10px;}
.pg-fill{height:100%;border-radius:10px;animation:pgF 1.2s ease-out;}
.pg-fill.a{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.pg-fill.b{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.pg-fill.c{background:linear-gradient(90deg,var(--amb),var(--ros));}
@keyframes pgF{from{width:0;}}
.chips{display:flex;gap:5px;flex-wrap:wrap;}
.chip{font-size:9.5px;padding:3px 9px;border-radius:20px;font-weight:600;}
.chip.ok{background:rgba(15,227,163,.1);color:var(--grn);border:1px solid rgba(15,227,163,.2);}
.chip.mid{background:var(--cyn-g);color:var(--cyn);border:1px solid rgba(24,224,203,.2);}
.chip.low{background:var(--amb-g);color:var(--amb);border:1px solid rgba(245,166,35,.2);}
.lb-row{display:flex;align-items:center;gap:10px;padding:9px 10px;border-radius:10px;transition:all .2s;}
.lb-row:hover{background:var(--bg3);}
.lb-row.me{background:rgba(24,224,203,.08);border:1px solid rgba(24,224,203,.25);}
.lb-pos{width:28px;height:28px;border-radius:8px;flex-shrink:0;display:flex;align-items:center;justify-content:center;font-family:'Syne',sans-serif;font-size:12px;font-weight:800;}
.lb-pos.g{background:linear-gradient(135deg,#F5A623,#F09000);color:#000;}
.lb-pos.s{background:linear-gradient(135deg,#CBD5E1,#94A3B8);color:#000;}
.lb-pos.b{background:linear-gradient(135deg,#CD7F32,#92400E);color:#fff;}
.lb-pos.d{background:var(--bg3);color:var(--t2);}
.lb-nm{flex:1;font-size:12.5px;font-weight:600;color:var(--t1);}
.lb-tag{font-size:9px;padding:2px 6px;border-radius:20px;background:var(--vio-g);color:var(--vio);font-weight:700;margin-left:6px;}
.lb-xp{font-size:11px;font-weight:700;color:var(--cyn);font-family:'DM Sans',monospace;}

/* ── CHAT ── */
.chat-tabs{display:flex;gap:3px;padding:9px 16px 0;border-bottom:1px solid var(--b0);flex-shrink:0;}
.ct{display:flex;align-items:center;gap:5px;padding:9px 14px;border-radius:9px 9px 0 0;cursor:pointer;font-size:12px;font-weight:600;color:var(--t2);transition:all .2s;border-bottom:2px solid transparent;}
.ct:hover{color:var(--t1);}
.ct.on{color:var(--cyn);border-bottom-color:var(--cyn);}
.ct-ico{width:16px;height:16px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.ct-ico svg{width:14px;height:14px;stroke:currentColor;fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.chat-empty{flex:1;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:24px 16px;text-align:center;overflow-y:auto;}
.ce-ico{width:64px;height:64px;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:20px;display:flex;align-items:center;justify-content:center;margin-bottom:16px;box-shadow:0 8px 28px rgba(144,97,249,.4);position:relative;}
.ce-ico svg{width:30px;height:30px;stroke:#fff;fill:none;stroke-width:1.4;stroke-linecap:round;stroke-linejoin:round;}
.ce-ico::after{content:'';position:absolute;inset:-4px;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:22px;z-index:-1;opacity:.5;filter:blur(11px);animation:wAura 3s ease-in-out infinite;}
.ce-title{font-family:'Syne',sans-serif;font-size:clamp(18px,4.5vw,22px);font-weight:800;margin-bottom:7px;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.ce-sub{font-size:12.5px;color:var(--t2);max-width:400px;line-height:1.6;}
.suggs{display:flex;flex-wrap:wrap;gap:7px;justify-content:center;margin-top:18px;max-width:560px;}
.sugg{display:flex;align-items:center;gap:6px;background:var(--surf);border:1px solid var(--b0);border-radius:10px;padding:8px 12px;cursor:pointer;font-size:11.5px;color:var(--t2);transition:all .2s;}
.sugg:hover{border-color:var(--cyn);color:var(--t1);background:var(--surf2);}
.msgs-area{flex:1;overflow-y:auto;padding:16px;display:none;scrollbar-width:thin;}
.msgs-area.on{display:block;}
.msgs-area::-webkit-scrollbar{width:4px;}
.msgs-area::-webkit-scrollbar-thumb{background:var(--b1);border-radius:2px;}
.mr{display:flex;gap:10px;margin-bottom:16px;animation:mFade .3s ease;}
@keyframes mFade{from{opacity:0;transform:translateY(6px);}}
.mr.user{flex-direction:row-reverse;}
.mav{width:32px;height:32px;flex-shrink:0;border-radius:10px;display:flex;align-items:center;justify-content:center;}
.mav.bot{background:linear-gradient(135deg,var(--vio),var(--cyn));box-shadow:0 4px 12px rgba(144,97,249,.3);}
.mav.bot svg{width:18px;height:18px;stroke:#fff;fill:none;stroke-width:1.5;stroke-linecap:round;stroke-linejoin:round;}
.mav.usr{background:linear-gradient(135deg,#374151,#4B5563);font-size:11.5px;font-weight:700;color:#fff;font-family:'Syne',sans-serif;}
.mbub{max-width:75%;padding:11px 14px;border-radius:14px;font-size:13px;line-height:1.6;}
.mr.bot .mbub{background:var(--surf2);border:1px solid var(--b0);color:var(--t1);border-top-left-radius:4px;}
.mr.user .mbub{background:linear-gradient(135deg,var(--vio),var(--ind));color:#fff;border-top-right-radius:4px;box-shadow:0 4px 12px rgba(144,97,249,.3);}
.think-row{display:flex;gap:10px;margin-bottom:16px;}
.think-bub{display:flex;align-items:center;gap:9px;background:var(--surf2);border:1px solid var(--b0);border-radius:14px;border-top-left-radius:4px;padding:11px 14px;max-width:200px;}
.think-spin{width:20px;height:20px;flex-shrink:0;animation:thS 1.5s linear infinite;}
@keyframes thS{to{transform:rotate(360deg);}}
.think-lbl{font-size:11px;color:var(--cyn);font-family:'DM Sans',monospace;}
.tdots span{display:inline-block;width:4.5px;height:4.5px;border-radius:50%;background:var(--vio);margin:0 1.5px;animation:td 1.4s infinite;}
.tdots span:nth-child(2){animation-delay:.2s;}.tdots span:nth-child(3){animation-delay:.4s;}
@keyframes td{0%,80%,100%{opacity:.2;transform:scale(.7);}40%{opacity:1;transform:scale(1);}}
.chat-inp-wrap{flex-shrink:0;padding:10px 16px 14px;border-top:1px solid var(--b1);background:rgba(255,255,255,.92);backdrop-filter:blur(20px);}
[data-theme=dark] .chat-inp-wrap{background:rgba(4,8,18,.6);border-top-color:var(--b0);}
.chat-inp-box{max-width:840px;margin:0 auto;background:var(--surf);border:1.5px solid var(--b1);border-radius:15px;padding:9px 11px 9px 13px;display:flex;flex-direction:column;gap:7px;transition:border-color .2s;}
.chat-inp-box:focus-within{border-color:var(--ind);box-shadow:0 0 0 3px var(--ind-g);}
.chat-ta{background:none;border:none;outline:none;resize:none;min-height:22px;max-height:100px;font-size:13.5px;color:var(--t1);font-family:'DM Sans',sans-serif;line-height:1.5;padding:0;scrollbar-width:none;width:100%;}
.chat-ta::placeholder{color:var(--t3);}
.chat-inp-row{display:flex;align-items:center;justify-content:space-between;gap:8px;}
.chat-inp-left{display:flex;align-items:center;gap:5px;}
.cin-act{width:29px;height:29px;background:transparent;border:1px solid var(--b1);border-radius:7px;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:all .2s;flex-shrink:0;color:var(--t3);}
.cin-act:hover{border-color:var(--b2);color:var(--t1);background:var(--bg3);}
.cin-act svg{width:14px;height:14px;stroke:currentColor;fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round;}
.cin-mic{width:29px;height:29px;background:transparent;border:1px solid var(--b1);border-radius:7px;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:all .2s;flex-shrink:0;}
.cin-mic svg{width:13px;height:13px;stroke:var(--t3);fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round;transition:stroke .2s;}
.cin-mic:hover{border-color:var(--b2);}
.cin-mic:hover svg{stroke:var(--t1);}
.cin-mic.rec{border-color:var(--ros);background:rgba(240,97,138,.1);animation:micP 1.5s ease-in-out infinite;}
.cin-mic.rec svg{stroke:var(--ros);}
@keyframes micP{0%,100%{box-shadow:0 0 0 0 rgba(240,97,138,.3);}50%{box-shadow:0 0 0 4px rgba(240,97,138,0);}}
.cin-send{width:33px;height:33px;flex-shrink:0;background:linear-gradient(135deg,var(--vio),var(--cyn));border:none;border-radius:10px;cursor:pointer;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 12px rgba(144,97,249,.4);transition:all .2s;}
.cin-send:hover{transform:scale(1.06);}
.cin-send svg{width:14px;height:14px;fill:#fff;}
.cin-hint{text-align:center;font-size:10px;color:var(--t3);margin-top:6px;max-width:840px;margin-left:auto;margin-right:auto;}

/* ══════════════════════════════════════
   ADMIN DASHBOARD
══════════════════════════════════════ */
.admin-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:10px;margin-bottom:18px;}
@media(min-width:500px){.admin-grid{grid-template-columns:repeat(4,1fr);}}
.admin-stat{background:var(--surf);border:1px solid var(--b0);border-radius:13px;padding:14px 12px;position:relative;overflow:hidden;transition:all .25s;}
.admin-stat::before{content:'';position:absolute;top:0;left:0;right:0;height:2px;}
.admin-stat.s1::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.admin-stat.s2::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.admin-stat.s3::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.admin-stat.s4::before{background:linear-gradient(90deg,var(--amb),var(--ros));}
.admin-stat:hover{border-color:var(--b1);}
.ast-ico{width:32px;height:32px;border-radius:9px;display:flex;align-items:center;justify-content:center;margin-bottom:8px;}
.admin-stat.s1 .ast-ico{background:var(--ind-g);}
.admin-stat.s2 .ast-ico{background:var(--cyn-g);}
.admin-stat.s3 .ast-ico{background:var(--vio-g);}
.admin-stat.s4 .ast-ico{background:var(--amb-g);}
.ast-ico svg{width:16px;height:16px;stroke:currentColor;fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round;}
.admin-stat.s1 .ast-ico svg{stroke:var(--ind2);}
.admin-stat.s2 .ast-ico svg{stroke:var(--cyn);}
.admin-stat.s3 .ast-ico svg{stroke:var(--vio);}
.admin-stat.s4 .ast-ico svg{stroke:var(--amb);}
.ast-v{font-family:'Syne',sans-serif;font-size:clamp(22px,4.5vw,28px);font-weight:800;display:block;line-height:1;margin-bottom:3px;}
.admin-stat.s1 .ast-v{background:linear-gradient(135deg,var(--ind),var(--cyn));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;}
.admin-stat.s2 .ast-v{color:var(--cyn);}
.admin-stat.s3 .ast-v{color:var(--vio);}
.admin-stat.s4 .ast-v{color:var(--amb);}
.ast-k{font-size:9.5px;color:var(--t3);text-transform:uppercase;letter-spacing:.05em;}
.ast-trend{font-size:10px;font-weight:600;margin-top:4px;}
.ast-trend.up{color:var(--grn);}
.ast-trend.dn{color:var(--ros);}

/* Real-time badge */
.rt-badge{display:inline-flex;align-items:center;gap:5px;background:rgba(15,227,163,.08);border:1px solid rgba(15,227,163,.25);border-radius:20px;padding:4px 10px;font-size:10.5px;font-weight:700;color:var(--grn);margin-bottom:14px;}
.rt-dot{width:6px;height:6px;border-radius:50%;background:var(--grn);box-shadow:0 0 6px var(--grn);animation:rtPulse 1.5s infinite;}
@keyframes rtPulse{0%,100%{opacity:1;transform:scale(1);}50%{opacity:.5;transform:scale(.8);}}

/* Charts area */
.admin-charts{display:grid;grid-template-columns:1fr;gap:14px;margin-bottom:18px;}
@media(min-width:600px){.admin-charts{grid-template-columns:1.5fr 1fr;}}
.chart-card{background:var(--surf);border:1px solid var(--b0);border-radius:14px;padding:16px;}
.chart-title{font-family:'Syne',sans-serif;font-size:13px;font-weight:700;color:var(--t1);margin-bottom:14px;}
.chart-bars{display:flex;align-items:flex-end;gap:6px;height:80px;}
.cb{flex:1;border-radius:4px 4px 0 0;min-width:0;position:relative;cursor:pointer;transition:opacity .2s;}
.cb:hover{opacity:.8;}
.cb-label{position:absolute;bottom:-18px;left:0;right:0;text-align:center;font-size:8.5px;color:var(--t3);}
.plan-dist{display:flex;flex-direction:column;gap:10px;}
.pd-row{display:flex;align-items:center;gap:10px;}
.pd-dot{width:8px;height:8px;border-radius:50%;flex-shrink:0;}
.pd-name{font-size:11.5px;color:var(--t2);flex:1;}
.pd-bar-wrap{flex:2;height:6px;background:var(--bg3);border-radius:10px;overflow:hidden;}
.pd-bar{height:100%;border-radius:10px;}
.pd-pct{font-size:11px;font-weight:700;color:var(--t1);font-family:'DM Sans',monospace;min-width:30px;text-align:right;}

/* Users table */
.users-table-wrap{background:var(--surf);border:1px solid var(--b0);border-radius:14px;overflow:hidden;margin-bottom:16px;}
.ut-head{display:flex;align-items:center;justify-content:space-between;padding:14px 16px;border-bottom:1px solid var(--b0);}
.ut-title{font-family:'Syne',sans-serif;font-size:13px;font-weight:700;color:var(--t1);}
.ut-search{display:flex;align-items:center;gap:8px;background:var(--bg3);border:1px solid var(--b0);border-radius:9px;padding:7px 12px;}
.ut-search input{background:none;border:none;outline:none;font-size:12px;color:var(--t1);width:140px;font-family:'DM Sans',sans-serif;}
.ut-search input::placeholder{color:var(--t3);}
.ut-search-ico{width:14px;height:14px;flex-shrink:0;}
.ut-search-ico svg{width:14px;height:14px;stroke:var(--t3);fill:none;stroke-width:1.8;stroke-linecap:round;}
/* Table scroll wrapper */
.ut-scroll{overflow-x:auto;scrollbar-width:thin;scrollbar-color:var(--b1) transparent;}
.ut-scroll::-webkit-scrollbar{height:4px;}
.ut-scroll::-webkit-scrollbar-thumb{background:var(--b1);border-radius:2px;}
table.ut{width:100%;border-collapse:collapse;min-width:680px;}
table.ut th{padding:10px 14px;text-align:left;font-size:9.5px;font-weight:700;color:var(--t3);text-transform:uppercase;letter-spacing:.08em;border-bottom:1px solid var(--b0);white-space:nowrap;}
table.ut td{padding:11px 14px;font-size:12.5px;color:var(--t2);border-bottom:1px solid var(--b0);white-space:nowrap;}
table.ut tr:last-child td{border-bottom:none;}
table.ut tr:hover td{background:rgba(255,255,255,.02);}
.ut-name{font-weight:600;color:var(--t1);}
.ut-plan-badge{display:inline-flex;padding:3px 8px;border-radius:20px;font-size:10px;font-weight:700;}
.ut-plan-badge.foundation{background:rgba(71,85,105,.15);color:var(--t3);}
.ut-plan-badge.mastery{background:var(--ind-g);color:var(--ind2);}
.ut-plan-badge.elite{background:var(--cyn-g);color:var(--cyn);}
.ut-plan-badge.excellence{background:var(--vio-g);color:var(--vio);}
.ut-status{display:inline-flex;align-items:center;gap:4px;font-size:11px;font-weight:600;}
.ut-status.online{color:var(--grn);}
.ut-status.offline{color:var(--t3);}
.ut-sdot{width:5px;height:5px;border-radius:50%;background:currentColor;}
.ut-status.online .ut-sdot{animation:rtPulse 1.5s infinite;}
.ut-progress-bar{width:80px;height:5px;background:var(--bg3);border-radius:10px;overflow:hidden;display:inline-block;}
.ut-progress-fill{height:100%;border-radius:10px;background:linear-gradient(90deg,var(--ind),var(--cyn));}
.ut-actions{display:flex;gap:6px;}
.ut-act-btn{padding:4px 10px;border-radius:7px;font-size:10.5px;font-weight:600;cursor:pointer;border:none;transition:all .2s;}
.ut-act-btn.view{background:var(--ind-g);color:var(--ind2);}
.ut-act-btn.view:hover{background:var(--ind);color:#fff;}
.ut-act-btn.msg{background:var(--cyn-g);color:var(--cyn);}
.ut-act-btn.msg:hover{background:var(--cyn);color:#000;}

/* Activity feed */
.activity-feed{background:var(--surf);border:1px solid var(--b0);border-radius:14px;padding:14px;}
.af-item{display:flex;align-items:flex-start;gap:11px;padding:10px 0;border-bottom:1px solid var(--b0);}
.af-item:last-child{border-bottom:none;}
.af-ico{width:30px;height:30px;border-radius:50%;flex-shrink:0;display:flex;align-items:center;justify-content:center;font-size:13px;}
.af-ico.new{background:var(--ind-g);}
.af-ico.pay{background:var(--cyn-g);}
.af-ico.msg{background:var(--vio-g);}
.af-ico.up{background:rgba(15,227,163,.12);}
.af-body{flex:1;min-width:0;}
.af-txt{font-size:12px;color:var(--t1);line-height:1.4;}
.af-txt b{color:var(--cyn);}
.af-time{font-size:10px;color:var(--t3);margin-top:2px;}

/* ── TIMER ── */
.timer-pop{position:fixed;bottom:20px;right:16px;width:min(268px,calc(100vw - 32px));background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b1);border-radius:16px;padding:16px;z-index:400;box-shadow:0 20px 60px rgba(0,0,0,.5);display:none;}
.timer-pop.on{display:block;animation:tpIn .25s ease;}
@keyframes tpIn{from{opacity:0;transform:translateY(8px);}}
.tp-h{display:flex;align-items:center;gap:9px;margin-bottom:12px;}
.tp-ic{width:30px;height:30px;background:linear-gradient(135deg,var(--amb),#F97316);border-radius:8px;display:flex;align-items:center;justify-content:center;}
.tp-ic svg{width:15px;height:15px;stroke:#fff;fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round;}
.tp-ttl{font-size:12.5px;font-weight:700;color:var(--t1);}
.tp-sub{font-size:10px;color:var(--t3);}
.tp-disp{font-family:'Syne',sans-serif;font-size:38px;font-weight:800;color:var(--amb);text-align:center;margin:6px 0 10px;text-shadow:0 0 18px rgba(245,166,35,.3);}
.tp-pre{display:flex;gap:5px;margin-bottom:10px;}
.tp-p{flex:1;padding:6px;background:var(--bg3);border:1px solid var(--b0);border-radius:7px;cursor:pointer;font-size:10.5px;font-weight:600;color:var(--t2);transition:all .2s;text-align:center;}
.tp-p:hover,.tp-p.on{border-color:var(--amb);color:var(--amb);background:var(--amb-g);}
.tp-ctrl{display:flex;gap:7px;}
.tp-btn{flex:1;padding:8px;border-radius:9px;border:none;cursor:pointer;font-weight:700;font-size:11.5px;font-family:'DM Sans',sans-serif;transition:all .2s;}
.tp-go{background:linear-gradient(135deg,var(--amb),#F97316);color:#fff;}
.tp-go:hover{transform:scale(1.02);}
.tp-rs{background:var(--bg3);color:var(--t2);border:1px solid var(--b1);}
.tp-rs:hover{color:var(--t1);}

/* ── PROFILE PANEL ── */
.pp-ovl{position:fixed;inset:0;background:rgba(0,0,0,.6);z-index:499;backdrop-filter:blur(4px);display:none;}
.pp-ovl.show{display:block;}
.profile-panel{position:fixed;top:0;right:0;bottom:0;width:min(320px,100vw);background:var(--surf);border-left:1px solid var(--b1);z-index:500;display:flex;flex-direction:column;transform:translateX(100%);transition:transform .3s cubic-bezier(.4,0,.2,1);box-shadow:-20px 0 60px rgba(0,0,0,.4);}
.profile-panel.open{transform:translateX(0);}
.pp-head{display:flex;align-items:center;justify-content:space-between;padding:18px 18px 14px;border-bottom:1px solid var(--b0);flex-shrink:0;}
.pp-title{font-family:'Syne',sans-serif;font-size:16px;font-weight:800;color:var(--t1);}
.pp-close{width:28px;height:28px;background:var(--bg3);border:1px solid var(--b1);border-radius:8px;display:flex;align-items:center;justify-content:center;cursor:pointer;color:var(--t2);transition:all .2s;}
.pp-close svg{width:14px;height:14px;stroke:currentColor;fill:none;stroke-width:2;stroke-linecap:round;}
.pp-close:hover{border-color:var(--b2);color:var(--t1);}
.pp-body{flex:1;overflow-y:auto;padding:16px;scrollbar-width:thin;}
.pp-body::-webkit-scrollbar{width:4px;}
.pp-body::-webkit-scrollbar-thumb{background:var(--b1);border-radius:2px;}
.pp-ucard{background:linear-gradient(135deg,var(--bg2),var(--bg3));border:1px solid var(--b1);border-radius:14px;padding:18px;text-align:center;margin-bottom:18px;}
.pp-uav{width:60px;height:60px;background:linear-gradient(135deg,var(--ind),var(--vio));border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:26px;margin:0 auto 10px;box-shadow:0 6px 20px rgba(144,97,249,.4);position:relative;}
.pp-uav::after{content:'';position:absolute;inset:-3px;background:linear-gradient(135deg,var(--vio),var(--cyn));border-radius:50%;z-index:-1;opacity:.5;filter:blur(7px);}
.pp-unm{font-family:'Syne',sans-serif;font-size:16px;font-weight:800;color:var(--t1);margin-bottom:3px;}
.pp-uemail{font-size:11.5px;color:var(--t2);margin-bottom:8px;}
.pp-uplan-badge{display:inline-flex;align-items:center;gap:5px;background:var(--cyn-g);border:1px solid rgba(24,224,203,.3);border-radius:20px;padding:4px 12px;font-size:11px;font-weight:700;color:var(--cyn);}
.pp-uplan-dot{width:5px;height:5px;border-radius:50%;background:var(--cyn);animation:ud 2s infinite;}
.pp-edit{display:flex;align-items:center;justify-content:center;gap:5px;width:100%;padding:9px;background:var(--bg3);border:1px solid var(--b1);border-radius:10px;font-size:12.5px;font-weight:600;color:var(--t1);cursor:pointer;margin-top:12px;transition:all .2s;}
.pp-edit svg{width:13px;height:13px;stroke:currentColor;fill:none;stroke-width:1.8;stroke-linecap:round;stroke-linejoin:round;}
.pp-edit:hover{border-color:var(--b2);}
.pp-sec{font-size:10px;font-weight:700;color:var(--t3);letter-spacing:.1em;text-transform:uppercase;margin-bottom:8px;margin-top:16px;}
.pp-item{display:flex;align-items:center;gap:11px;padding:11px 13px;background:var(--bg3);border:1px solid var(--b0);border-radius:11px;margin-bottom:7px;cursor:pointer;transition:all .2s;}
.pp-item:hover{border-color:var(--b1);}
.pp-item-ico{width:26px;height:26px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.pp-item-ico svg{width:16px;height:16px;stroke:var(--cyn);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.pp-item-lbl{font-size:13px;font-weight:600;color:var(--t1);flex:1;}
.pp-item-sub{font-size:10.5px;color:var(--t3);margin-top:1px;}
.pp-arrow{font-size:14px;color:var(--t3);}
.pp-toggle{display:flex;align-items:center;justify-content:space-between;padding:11px 13px;background:var(--bg3);border:1px solid var(--b0);border-radius:11px;margin-bottom:7px;}
.pp-tgl-left{display:flex;align-items:center;gap:11px;}
.pp-tgl-ico{width:26px;height:26px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.pp-tgl-ico svg{width:15px;height:15px;stroke:var(--t2);fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.pp-tgl-lbl{font-size:13px;font-weight:600;color:var(--t1);}
.pp-tgl-sub{font-size:10.5px;color:var(--t3);margin-top:1px;}
.pp-switch{width:40px;height:22px;background:var(--b1);border-radius:11px;position:relative;cursor:pointer;transition:background .2s;flex-shrink:0;}
.pp-switch.on{background:linear-gradient(135deg,var(--ind),var(--cyn));}
.pp-switch::after{content:'';position:absolute;top:3px;left:3px;width:16px;height:16px;border-radius:50%;background:#fff;transition:transform .2s;box-shadow:0 2px 4px rgba(0,0,0,.3);}
.pp-switch.on::after{transform:translateX(18px);}
.pp-danger{background:rgba(240,97,138,.06);border:1px solid rgba(240,97,138,.2);border-radius:11px;padding:11px 13px;margin-bottom:7px;cursor:pointer;transition:all .2s;}
.pp-danger:hover{border-color:rgba(240,97,138,.4);}
.pp-danger-lbl{font-size:13px;font-weight:600;color:var(--ros);}
.pp-danger-sub{font-size:10.5px;color:var(--t3);margin-top:1px;}
.pp-ver{text-align:center;font-size:10px;color:var(--t3);padding:12px 0 4px;}

/* ── UPGRADE MODAL ── */
.ovl{position:fixed;inset:0;background:rgba(0,0,0,.85);backdrop-filter:blur(10px);z-index:600;display:none;align-items:center;justify-content:center;padding:16px;}
.ovl.on{display:flex;animation:ovIn .25s ease;}
@keyframes ovIn{from{opacity:0;}}
.mod{width:100%;max-width:780px;background:linear-gradient(135deg,var(--bg2),var(--bg));border:1px solid var(--b1);border-radius:22px;max-height:90vh;overflow-y:auto;animation:modIn .35s cubic-bezier(.34,1.2,.64,1);scrollbar-width:none;}
.mod::-webkit-scrollbar{display:none;}
@keyframes modIn{from{transform:scale(.94) translateY(18px);opacity:0;}}
.mod-hd{text-align:center;padding:26px 24px 20px;border-bottom:1px solid var(--b0);position:relative;overflow:hidden;}
.mod-hd::before{content:'';position:absolute;top:-50%;left:50%;transform:translateX(-50%);width:360px;height:360px;background:radial-gradient(circle,rgba(144,97,249,.1),transparent 60%);pointer-events:none;}
.mod-badge{display:inline-flex;align-items:center;gap:5px;background:var(--vio-g);border:1px solid rgba(144,97,249,.25);border-radius:20px;padding:5px 13px;font-size:10px;font-weight:600;color:var(--vio);margin-bottom:12px;position:relative;}
.mod-title{font-family:'Syne',sans-serif;font-size:clamp(22px,5vw,28px);font-weight:900;margin-bottom:6px;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;position:relative;}
.mod-tag{font-size:13px;color:var(--ros);font-weight:600;font-style:italic;margin-bottom:8px;position:relative;}
.mod-sub{font-size:13px;color:var(--t2);line-height:1.6;position:relative;max-width:520px;margin:0 auto;}
.mod-sub b{color:var(--cyn);}
.plans-wrap{display:grid;grid-template-columns:1fr;gap:11px;padding:20px;}
@media(min-width:600px){.plans-wrap{grid-template-columns:repeat(2,1fr);}}
.plan{background:var(--surf);border:1.5px solid var(--b0);border-radius:16px;padding:18px 16px;cursor:pointer;transition:all .25s;position:relative;overflow:hidden;}
.plan::after{content:'';position:absolute;top:0;left:0;right:0;height:3px;}
.plan.f0::after{background:linear-gradient(90deg,#475569,#64748B);}
.plan.p1::after{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.plan.p2::after{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.plan.p3::after{background:linear-gradient(90deg,var(--vio),var(--amb));}
.plan.p1{border-color:rgba(91,110,245,.25);}
.plan.p2{border-color:rgba(24,224,203,.25);}
.plan.p3{border-color:rgba(144,97,249,.3);}
.plan:hover{transform:translateY(-3px);}
.plan.p1:hover{border-color:var(--ind);}
.plan.p2:hover{border-color:var(--cyn);}
.plan.p3:hover{border-color:var(--vio);}
.pop-tag{position:absolute;top:12px;right:12px;font-size:9.5px;font-weight:700;padding:3px 9px;border-radius:20px;background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;}
.pl-top{display:flex;align-items:center;gap:10px;margin-bottom:9px;}
.pl-plan-ico{width:30px;height:30px;border-radius:9px;flex-shrink:0;display:flex;align-items:center;justify-content:center;}
.plan.f0 .pl-plan-ico{background:rgba(71,85,105,.2);}
.plan.p1 .pl-plan-ico{background:var(--ind-g);}
.plan.p2 .pl-plan-ico{background:var(--cyn-g);}
.plan.p3 .pl-plan-ico{background:var(--vio-g);}
.pl-plan-ico svg{width:16px;height:16px;stroke:currentColor;fill:none;stroke-width:1.6;stroke-linecap:round;stroke-linejoin:round;}
.plan.f0 .pl-plan-ico svg{stroke:var(--t3);}
.plan.p1 .pl-plan-ico svg{stroke:var(--ind2);}
.plan.p2 .pl-plan-ico svg{stroke:var(--cyn);}
.plan.p3 .pl-plan-ico svg{stroke:var(--vio);}
.pl-name{font-family:'Syne',sans-serif;font-size:16px;font-weight:800;color:var(--t1);}
.pl-ai-tag{display:inline-block;font-size:9px;font-weight:700;padding:2px 7px;border-radius:5px;margin-top:2px;}
.plan.f0 .pl-ai-tag{background:rgba(71,85,105,.2);color:var(--t3);}
.plan.p1 .pl-ai-tag{background:var(--ind-g);color:var(--ind2);}
.plan.p2 .pl-ai-tag{background:var(--cyn-g);color:var(--cyn);}
.plan.p3 .pl-ai-tag{background:var(--vio-g);color:var(--vio);}
.pl-price{margin-left:auto;text-align:right;font-family:'Syne',sans-serif;font-size:19px;font-weight:900;}
.pl-price small{font-size:9px;font-weight:400;color:var(--t3);display:block;}
.plan.f0 .pl-price{color:var(--t3);}
.plan.p1 .pl-price{color:var(--ind2);}
.plan.p2 .pl-price{color:var(--cyn);}
.plan.p3 .pl-price{color:var(--vio);}
.trial-badge{display:inline-flex;align-items:center;gap:5px;background:rgba(15,227,163,.1);border:1px solid rgba(15,227,163,.3);border-radius:20px;padding:4px 10px;font-size:10px;font-weight:700;color:var(--grn);margin-bottom:9px;}
.pl-promise{font-style:italic;font-size:11px;color:var(--t1);padding:8px 10px;border-radius:8px;border-left:3px solid;margin-bottom:10px;font-weight:500;}
.plan.f0 .pl-promise{border-color:var(--t3);background:rgba(71,85,105,.06);}
.plan.p1 .pl-promise{border-color:var(--ind);background:var(--ind-g);}
.plan.p2 .pl-promise{border-color:var(--cyn);background:rgba(24,224,203,.06);}
.plan.p3 .pl-promise{border-color:var(--vio);background:var(--vio-g);}
.pl-div{height:1px;background:var(--b0);margin-bottom:10px;}
.pl-feats{display:flex;flex-direction:column;gap:7px;margin-bottom:10px;}
.pf{display:flex;align-items:flex-start;gap:7px;font-size:11.5px;color:var(--t2);line-height:1.4;}
.pf b{color:var(--t1);font-weight:600;}
.pf-ic{width:16px;height:16px;border-radius:50%;flex-shrink:0;display:flex;align-items:center;justify-content:center;font-size:8px;font-weight:800;margin-top:1px;}
.plan.f0 .pf-ic{background:rgba(71,85,105,.2);color:var(--t3);}
.plan.p1 .pf-ic{background:var(--ind-g);color:var(--ind2);}
.plan.p2 .pf-ic{background:var(--cyn-g);color:var(--cyn);}
.plan.p3 .pf-ic{background:var(--vio-g);color:var(--vio);}
.pl-teaser{font-size:10.5px;color:var(--t3);font-style:italic;padding:6px 9px;border-radius:7px;margin-bottom:10px;background:var(--vio-g);border:1px dashed rgba(144,97,249,.2);}
.pl-teaser b{color:var(--vio);font-style:normal;}
.pl-cta{width:100%;padding:10px;border:none;border-radius:10px;font-size:12.5px;font-weight:700;cursor:pointer;font-family:'Syne',sans-serif;transition:all .2s;}
.plan.f0 .pl-cta{background:var(--bg3);color:var(--t2);border:1px solid var(--b1);}
.plan.p1 .pl-cta{background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;box-shadow:0 4px 13px rgba(91,110,245,.3);}
.plan.p2 .pl-cta{background:linear-gradient(135deg,var(--cyn),var(--grn));color:#000;box-shadow:0 4px 13px rgba(24,224,203,.3);}
.plan.p3 .pl-cta{background:linear-gradient(135deg,var(--vio),var(--amb));color:#fff;box-shadow:0 4px 13px rgba(144,97,249,.4);}
.pl-cta:hover{transform:scale(1.02);}
.mod-ft{text-align:center;padding:14px 20px 22px;font-size:11px;color:var(--t3);border-top:1px solid var(--b0);}
.mod-close-btn{display:inline-flex;align-items:center;gap:5px;margin-top:12px;padding:9px 20px;background:none;border:1px solid var(--b1);border-radius:10px;color:var(--t2);font-size:12.5px;cursor:pointer;transition:all .2s;}
.mod-close-btn:hover{border-color:var(--b2);color:var(--t1);}

/* ── RESPONSIVE ── */
@media(max-width:768px){
  .admin-grid{grid-template-columns:repeat(2,1fr);}
}
@media(max-width:480px){
  .admin-charts{grid-template-columns:1fr;}
}

/* ══════════════════════════════════════════
   LIGHT THEME OVERRIDES — contraste élevé
══════════════════════════════════════════ */
body:not([data-theme=dark]) .sidebar{background:#FFFFFF;border-right:1px solid #E2E8F0;}
body:not([data-theme=dark]) .sb-sec{color:#64748B;font-weight:700;}
body:not([data-theme=dark]) .sbi{color:#334155;}
body:not([data-theme=dark]) .sbi:hover{background:#EEF2FF;color:#3B49C9;}
body:not([data-theme=dark]) .sbi.on{background:linear-gradient(90deg,rgba(68,82,217,.12),transparent);color:#3B49C9;font-weight:700;}
body:not([data-theme=dark]) .sbi.on::before{background:linear-gradient(180deg,#4452D9,#7B47E0);}
body:not([data-theme=dark]) .sb-top{border-bottom:1px solid #E2E8F0;}
body:not([data-theme=dark]) .sb-foot{border-top:1px solid #E2E8F0;}
body:not([data-theme=dark]) .sb-user:hover{background:#EEF2FF;}
body:not([data-theme=dark]) .sb-unm{color:#1E293B;}
body:not([data-theme=dark]) .sb-theme-btn{background:#F1F5F9;border-color:#CBD5E1;}
body:not([data-theme=dark]) .sb-theme-btn:hover{border-color:#4452D9;}
body:not([data-theme=dark]) .mob-topbar{background:rgba(255,255,255,.95);}
body:not([data-theme=dark]) .desk-topbar{background:rgba(255,255,255,.95);}
body:not([data-theme=dark]) .surf{background:#FFFFFF;}
body:not([data-theme=dark]) .app-pane::-webkit-scrollbar-thumb{background:rgba(100,116,139,.25);}
body:not([data-theme=dark]) .fc,.sfc{background:#FFFFFF;}
body:not([data-theme=dark]) .pl-card,.welcome,.pl-item{background:#FFFFFF;}
body:not([data-theme=dark]) .pl-item:not(.done):not(.now){border-color:#E2E8F0;}
body:not([data-theme=dark]) .pl-d{color:#1E293B;}
body:not([data-theme=dark]) .wb,.wb1,.wb2{background:var(--ind);}
/* Correction topbar dark background bg3 */
body:not([data-theme=dark]) .bg3{background:#EEF1F7;}
body:not([data-theme=dark]) .fi,.fsel,.wiz-inp{background:#F8FAFC;border-color:#CBD5E1;color:#1E293B;}
body:not([data-theme=dark]) .fi::placeholder,.wiz-inp::placeholder{color:#94A3B8;}
body:not([data-theme=dark]) .auth-card,.wiz-card,.mod{background:#FFFFFF;border-color:#E2E8F0;box-shadow:0 20px 60px rgba(0,0,0,.08);}
body:not([data-theme=dark]) .pf-body,.pf-chat,.pf-msg.b{background:#F1F5F9;}
body:not([data-theme=dark]) .pf-stat,.pf-url{background:#EEF1F7;}
body:not([data-theme=dark]) .pf-msg.b{color:#334155;border-color:#E2E8F0;}
body:not([data-theme=dark]) .profile-panel{background:#FFFFFF;border-left-color:#E2E8F0;}
body:not([data-theme=dark]) .pp-body{background:#F8FAFC;}
body:not([data-theme=dark]) .pp-ucard{background:#FFFFFF;border-color:#E2E8F0;}
body:not([data-theme=dark]) .pp-toggle,.pp-item{border-bottom-color:#F1F5F9;}
body:not([data-theme=dark]) .pp-tgl-lbl,.pp-unm{color:#1E293B;}
body:not([data-theme=dark]) .pp-tgl-sub,.pp-uemail,.pp-item-sub{color:#64748B;}
body:not([data-theme=dark]) .a-tab{color:#64748B;}
body:not([data-theme=dark]) .a-tab.on{background:#FFFFFF;color:#1E293B;}
body:not([data-theme=dark]) .sh-l{color:#64748B;}

/* Fond body + mesh clair */
body:not([data-theme=dark])::before{
  background:
    radial-gradient(ellipse 80% 50% at 5% 0%,rgba(123,71,224,.07),transparent 55%),
    radial-gradient(ellipse 70% 50% at 95% 5%,rgba(11,173,155,.06),transparent 55%),
    radial-gradient(ellipse 55% 40% at 50% 100%,rgba(68,82,217,.05),transparent 55%);
}

/* ══════════════════════════════════════════
   ALERTES EXPIRATION ABONNEMENT
══════════════════════════════════════════ */
.alert-banner{display:flex;align-items:flex-start;gap:12px;padding:14px 16px;border-radius:12px;margin-bottom:14px;border:1px solid;animation:alertIn .4s cubic-bezier(.34,1.2,.64,1);}
@keyframes alertIn{from{opacity:0;transform:translateY(-8px);}}
.alert-banner.warn7{background:rgba(68,82,217,.07);border-color:rgba(68,82,217,.25);}
.alert-banner.warn2{background:rgba(245,166,35,.08);border-color:rgba(245,166,35,.3);}
.alert-banner.warn1{background:rgba(225,75,122,.09);border-color:rgba(225,75,122,.35);}
.alert-ico{font-size:20px;flex-shrink:0;margin-top:1px;}
.alert-body{flex:1;min-width:0;}
.alert-title{font-size:13px;font-weight:700;color:var(--t1);margin-bottom:3px;}
.alert-desc{font-size:11.5px;color:var(--t2);line-height:1.55;}
.alert-cta{display:inline-flex;align-items:center;gap:5px;margin-top:8px;padding:7px 14px;border-radius:20px;font-size:11.5px;font-weight:700;border:none;cursor:pointer;transition:all .2s;}
.alert-banner.warn7 .alert-cta{background:rgba(68,82,217,.12);color:var(--ind);border:1px solid rgba(68,82,217,.25);}
.alert-banner.warn2 .alert-cta{background:rgba(245,166,35,.12);color:var(--amb);border:1px solid rgba(245,166,35,.25);}
.alert-banner.warn1 .alert-cta{background:linear-gradient(135deg,var(--ros),var(--vio));color:#fff;box-shadow:0 4px 12px rgba(225,75,122,.3);}
.alert-cta:hover{transform:scale(1.04);}
.alert-dismiss{width:24px;height:24px;flex-shrink:0;background:none;border:1px solid var(--b1);border-radius:6px;cursor:pointer;font-size:12px;color:var(--t3);display:flex;align-items:center;justify-content:center;transition:all .2s;margin-top:1px;}
.alert-dismiss:hover{border-color:var(--b2);color:var(--t1);}

/* ══════════════════════════════════════════
   PLANNING INTELLIGENT
══════════════════════════════════════════ */
.plan-tabs{display:flex;gap:4px;background:var(--bg3);border-radius:10px;padding:3px;margin-bottom:16px;border:1px solid var(--b0);}
.plan-tab{flex:1;padding:8px 6px;border-radius:8px;font-size:11.5px;font-weight:600;text-align:center;cursor:pointer;color:var(--t2);transition:all .2s;}
.plan-tab.on{background:var(--surf);color:var(--ind);font-weight:700;box-shadow:0 2px 8px rgba(0,0,0,.1);}
.day-plan-card{background:var(--surf);border:1px solid var(--b0);border-radius:14px;padding:16px;margin-bottom:12px;position:relative;overflow:hidden;}
.day-plan-card::before{content:'';position:absolute;top:0;left:0;bottom:0;width:3px;background:linear-gradient(180deg,var(--ind),var(--cyn));}
.dpc-head{display:flex;align-items:center;gap:10px;margin-bottom:13px;}
.dpc-day-badge{background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;font-family:'Syne',sans-serif;font-size:12px;font-weight:800;padding:5px 12px;border-radius:20px;}
.dpc-title{font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:var(--t1);}
.dpc-sub{font-size:10.5px;color:var(--t2);}
.dpc-matières{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:12px;}
.dpc-mat{padding:4px 10px;border-radius:20px;font-size:11px;font-weight:600;}
.dpc-mat.m1{background:var(--ind-g);color:var(--ind);}
.dpc-mat.m2{background:var(--cyn-g);color:var(--cyn);}
.dpc-mat.m3{background:var(--vio-g);color:var(--vio);}
.dpc-mat.m4{background:var(--amb-g);color:var(--amb);}
.dpc-section-title{font-size:10px;font-weight:700;color:var(--t3);letter-spacing:.08em;text-transform:uppercase;margin-bottom:7px;margin-top:10px;}
.dpc-notion{display:flex;align-items:center;gap:8px;padding:8px 10px;background:var(--bg3);border-radius:8px;margin-bottom:5px;border:1px solid var(--b0);}
.dpc-notion-dot{width:7px;height:7px;border-radius:50%;background:var(--ind);flex-shrink:0;}
.dpc-notion-txt{font-size:12px;color:var(--t1);flex:1;}
.dpc-exo{display:flex;align-items:center;gap:9px;padding:9px 10px;background:var(--bg3);border-radius:8px;margin-bottom:5px;border-left:2px solid var(--cyn);border-top:1px solid var(--b0);border-right:1px solid var(--b0);border-bottom:1px solid var(--b0);}
.dpc-diff{font-size:9px;font-weight:800;padding:2px 6px;border-radius:4px;flex-shrink:0;}
.dpc-diff.f{background:rgba(15,170,117,.12);color:var(--grn);}
.dpc-diff.m{background:var(--amb-g);color:var(--amb);}
.dpc-diff.h{background:var(--ros-g);color:var(--ros);}
.dpc-eval{background:linear-gradient(135deg,rgba(68,82,217,.08),rgba(11,173,155,.06));border:1px solid rgba(68,82,217,.2);border-radius:10px;padding:12px;margin-top:10px;}
.dpc-eval-title{font-size:11.5px;font-weight:700;color:var(--ind);margin-bottom:5px;display:flex;align-items:center;gap:6px;}
.dpc-eval-txt{font-size:11px;color:var(--t2);line-height:1.5;}
.dpc-cta-row{display:flex;gap:8px;margin-top:12px;flex-wrap:wrap;}
.dpc-btn{padding:9px 16px;border-radius:20px;font-size:12px;font-weight:700;border:none;cursor:pointer;transition:all .2s;font-family:'Syne',sans-serif;}
.dpc-btn.primary{background:linear-gradient(135deg,var(--ind),var(--cyn));color:#fff;box-shadow:0 4px 12px rgba(68,82,217,.3);}
.dpc-btn.secondary{background:var(--bg3);color:var(--t2);border:1px solid var(--b1);}
.dpc-btn:hover{transform:scale(1.03);}
/* Plan différenciation badges */
.plan-level-badge{display:inline-flex;align-items:center;gap:5px;padding:4px 10px;border-radius:20px;font-size:10px;font-weight:700;margin-bottom:12px;}
.plan-level-badge.mastery{background:var(--ind-g);color:var(--ind);border:1px solid rgba(68,82,217,.2);}
.plan-level-badge.elite{background:var(--cyn-g);color:var(--cyn);border:1px solid rgba(11,173,155,.2);}
.plan-level-badge.excellence{background:linear-gradient(135deg,rgba(123,71,224,.1),rgba(68,82,217,.1));color:var(--vio);border:1px solid rgba(123,71,224,.25);}
.plan-lock-overlay{background:rgba(15,23,42,.7);backdrop-filter:blur(4px);border-radius:10px;padding:16px;text-align:center;margin-top:8px;}
.plan-lock-overlay .lock-ico{font-size:24px;margin-bottom:6px;}
.plan-lock-overlay .lock-txt{font-size:12px;color:var(--t2);margin-bottom:10px;}
.plan-lock-btn{padding:9px 20px;background:linear-gradient(135deg,var(--vio),var(--cyn));border:none;border-radius:20px;font-size:12px;font-weight:700;color:#fff;cursor:pointer;font-family:'Syne',sans-serif;}

/* ══════════════════════════════════════════
   EXAMENS BLANCS
══════════════════════════════════════════ */
.eb-header{background:linear-gradient(135deg,var(--surf),var(--surf2));border:1px solid var(--b0);border-radius:14px;padding:16px;margin-bottom:14px;position:relative;overflow:hidden;}
.eb-header::before{content:'';position:absolute;top:-30%;right:-5%;width:180px;height:180px;background:radial-gradient(circle,rgba(240,97,138,.12),transparent 60%);}
.eb-countdown{display:flex;align-items:center;gap:8px;margin-top:8px;}
.eb-cd-unit{text-align:center;background:var(--bg3);border-radius:8px;padding:8px 12px;min-width:48px;}
.eb-cd-val{font-family:'Syne',sans-serif;font-size:20px;font-weight:800;color:var(--ros);}
.eb-cd-lbl{font-size:9px;color:var(--t3);text-transform:uppercase;letter-spacing:.06em;}
.eb-cd-sep{font-size:18px;font-weight:800;color:var(--t3);margin-bottom:8px;}
.eb-cards-grid{display:grid;grid-template-columns:1fr;gap:10px;margin-bottom:14px;}
@media(min-width:500px){.eb-cards-grid{grid-template-columns:1fr 1fr;}}
.eb-card{background:var(--surf);border:1.5px solid var(--b0);border-radius:13px;padding:15px;position:relative;overflow:hidden;transition:all .25s;}
.eb-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;}
.eb-card.c1::before{background:linear-gradient(90deg,var(--ind),var(--cyn));}
.eb-card.c2::before{background:linear-gradient(90deg,var(--cyn),var(--grn));}
.eb-card.c3::before{background:linear-gradient(90deg,var(--vio),var(--ros));}
.eb-card.c4::before{background:linear-gradient(90deg,var(--amb),var(--ros));}
.eb-card:hover{transform:translateY(-2px);border-color:var(--b1);}
.eb-card-head{display:flex;align-items:center;justify-content:space-between;margin-bottom:8px;}
.eb-concours{font-family:'Syne',sans-serif;font-size:17px;font-weight:900;color:var(--t1);}
.eb-status{font-size:9.5px;font-weight:700;padding:3px 9px;border-radius:20px;}
.eb-status.upcoming{background:var(--ind-g);color:var(--ind);}
.eb-status.live{background:rgba(225,75,122,.12);color:var(--ros);animation:bk 1.5s infinite;}
.eb-status.done{background:rgba(15,170,117,.1);color:var(--grn);}
.eb-status.corrections{background:var(--vio-g);color:var(--vio);}
.eb-time-row{display:flex;align-items:center;gap:6px;font-size:11px;color:var(--t2);margin-bottom:6px;}
.eb-time-ic{width:13px;height:13px;stroke:var(--t3);fill:none;stroke-width:1.6;stroke-linecap:round;}
.eb-details{font-size:11px;color:var(--t2);line-height:1.6;margin-bottom:10px;}
.eb-score-row{display:flex;align-items:center;gap:8px;padding:8px 10px;background:var(--bg3);border-radius:8px;margin-bottom:8px;}
.eb-score-val{font-family:'Syne',sans-serif;font-size:22px;font-weight:900;color:var(--cyn);}
.eb-score-detail{font-size:11px;color:var(--t2);}
.eb-rank{display:flex;align-items:center;gap:5px;font-size:11px;color:var(--amb);font-weight:700;}
.eb-cta-row{display:flex;gap:6px;}
.eb-btn{flex:1;padding:9px;border-radius:9px;font-size:11.5px;font-weight:700;border:none;cursor:pointer;transition:all .2s;text-align:center;font-family:'Syne',sans-serif;}
.eb-btn.start{background:linear-gradient(135deg,var(--ros),var(--vio));color:#fff;box-shadow:0 4px 12px rgba(225,75,122,.3);}
.eb-btn.submit{background:linear-gradient(135deg,var(--grn),var(--cyn));color:#000;font-weight:800;}
.eb-btn.view{background:var(--ind-g);color:var(--ind);border:1px solid rgba(68,82,217,.2);}
.eb-btn.disabled{background:var(--bg3);color:var(--t3);cursor:not-allowed;}
.eb-btn:not(.disabled):hover{transform:scale(1.03);}
/* Alerte examen blanc avant */
.eb-pre-alert{background:linear-gradient(135deg,rgba(245,166,35,.08),rgba(225,75,122,.06));border:1px solid rgba(245,166,35,.3);border-radius:11px;padding:13px 14px;margin-bottom:12px;display:flex;align-items:flex-start;gap:10px;}
.eb-pre-alert-ico{font-size:18px;flex-shrink:0;}
.eb-pre-alert-body{flex:1;}
.eb-pre-alert-title{font-size:12.5px;font-weight:700;color:var(--amb);margin-bottom:3px;}
.eb-pre-alert-txt{font-size:11px;color:var(--t2);line-height:1.55;}

/* ══════════════════════════════════════════
   CORRECTION CONCOURS BLANC
══════════════════════════════════════════ */
.correction-card{background:var(--surf);border:1px solid var(--b0);border-radius:14px;padding:16px;margin-bottom:12px;}
.corr-score-header{text-align:center;padding:20px 16px;background:linear-gradient(135deg,var(--surf),var(--surf2));border-radius:12px;margin-bottom:14px;position:relative;overflow:hidden;}
.corr-score-big{font-family:'Syne',sans-serif;font-size:52px;font-weight:900;background:linear-gradient(135deg,var(--cyn),var(--vio));-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;line-height:1;}
.corr-score-sub{font-size:12px;color:var(--t2);margin-top:4px;}
.corr-rank-badge{display:inline-flex;align-items:center;gap:5px;background:var(--amb-g);border:1px solid rgba(217,132,18,.25);border-radius:20px;padding:5px 12px;font-size:11.5px;font-weight:700;color:var(--amb);margin-top:8px;}
.corr-section{margin-bottom:14px;}
.corr-section-title{font-size:11px;font-weight:700;color:var(--t3);letter-spacing:.08em;text-transform:uppercase;margin-bottom:8px;display:flex;align-items:center;gap:6px;}
.corr-item{display:flex;align-items:flex-start;gap:8px;padding:9px 10px;border-radius:8px;margin-bottom:5px;font-size:12px;}
.corr-item.good{background:rgba(11,170,117,.07);border:1px solid rgba(11,170,117,.2);}
.corr-item.bad{background:rgba(225,75,122,.07);border:1px solid rgba(225,75,122,.2);}
.corr-item.neutral{background:var(--bg3);border:1px solid var(--b0);}
.corr-ic{font-size:13px;flex-shrink:0;margin-top:1px;}
.corr-txt{color:var(--t1);line-height:1.5;}
.corr-txt b{color:var(--t1);}
.corr-txt small{color:var(--t2);font-size:10.5px;}
.corr-bar-row{display:flex;align-items:center;gap:10px;margin-bottom:7px;}
.corr-bar-lbl{font-size:11px;color:var(--t2);width:110px;flex-shrink:0;}
.corr-bar-track{flex:1;height:7px;background:var(--bg3);border-radius:4px;overflow:hidden;}
.corr-bar-fill{height:100%;border-radius:4px;transition:width .8s ease;}
.corr-bar-fill.good{background:linear-gradient(90deg,var(--grn),var(--cyn));}
.corr-bar-fill.avg{background:linear-gradient(90deg,var(--amb),var(--ros));}
.corr-bar-fill.low{background:linear-gradient(90deg,var(--ros),#FF3D7F);}
.corr-bar-pct{font-size:11px;font-weight:700;color:var(--t2);width:30px;text-align:right;}
.corr-reco{background:linear-gradient(135deg,rgba(68,82,217,.07),rgba(123,71,224,.05));border:1px solid rgba(68,82,217,.18);border-radius:10px;padding:12px;}
.corr-reco-title{font-size:12px;font-weight:700;color:var(--ind);margin-bottom:7px;display:flex;align-items:center;gap:6px;}
.corr-reco-item{display:flex;align-items:flex-start;gap:7px;font-size:11.5px;color:var(--t2);margin-bottom:5px;line-height:1.45;}
.corr-reco-num{width:18px;height:18px;border-radius:50%;background:var(--ind-g);color:var(--ind);font-size:9px;font-weight:800;display:flex;align-items:center;justify-content:center;flex-shrink:0;margin-top:1px;}

/* ══════════════════════════════════════════
   CLASSEMENT PAR CONCOURS
══════════════════════════════════════════ */
.lb-tabs{display:flex;gap:4px;overflow-x:auto;scrollbar-width:none;padding-bottom:4px;margin-bottom:14px;}
.lb-tabs::-webkit-scrollbar{display:none;}
.lb-tab{flex-shrink:0;padding:7px 14px;border-radius:20px;font-size:12px;font-weight:600;cursor:pointer;border:1.5px solid var(--b1);color:var(--t2);transition:all .2s;}
.lb-tab.on{background:var(--ind);border-color:var(--ind);color:#fff;box-shadow:0 4px 12px rgba(68,82,217,.3);}
.lb-tab:hover:not(.on){border-color:var(--b2);color:var(--t1);}
.lb-meta-row{display:grid;grid-template-columns:repeat(3,1fr);gap:8px;margin-bottom:14px;}
.lb-meta-card{background:var(--surf);border:1px solid var(--b0);border-radius:10px;padding:11px;text-align:center;}
.lb-meta-val{font-family:'Syne',sans-serif;font-size:18px;font-weight:800;}
.lb-meta-val.v1{color:var(--ind);}
.lb-meta-val.v2{color:var(--cyn);}
.lb-meta-val.v3{color:var(--amb);}
.lb-meta-lbl{font-size:10px;color:var(--t3);}
.lb-table-wrap{background:var(--surf);border:1px solid var(--b0);border-radius:14px;overflow:hidden;}
.lb-table-head{display:grid;grid-template-columns:36px 1fr 80px 70px;gap:8px;padding:10px 14px;border-bottom:1px solid var(--b0);font-size:10px;font-weight:700;color:var(--t3);text-transform:uppercase;letter-spacing:.07em;}
.lb-row2{display:grid;grid-template-columns:36px 1fr 80px 70px;gap:8px;padding:11px 14px;border-bottom:1px solid var(--b0);align-items:center;transition:background .15s;}
.lb-row2:last-child{border-bottom:none;}
.lb-row2:hover{background:var(--bg3);}
.lb-row2.me2{background:linear-gradient(90deg,rgba(68,82,217,.06),transparent);border-left:2px solid var(--ind);}
.lb-pos2{font-family:'Syne',sans-serif;font-size:14px;font-weight:800;text-align:center;}
.lb-pos2.g2{color:#F5A623;}.lb-pos2.s2{color:#94A3B8;}.lb-pos2.b2{color:#CD7F32;}.lb-pos2.d2{color:var(--t2);}
.lb-player{display:flex;align-items:center;gap:8px;}
.lb-av2{width:28px;height:28px;border-radius:50%;background:linear-gradient(135deg,var(--ind),var(--vio));display:flex;align-items:center;justify-content:center;font-size:11px;font-weight:700;color:#fff;flex-shrink:0;}
.lb-pnm{font-size:12px;font-weight:600;color:var(--t1);}
.lb-plan-tag{font-size:9px;font-weight:700;padding:1px 6px;border-radius:4px;background:var(--ind-g);color:var(--ind);}
.lb-score2{font-family:'Syne',sans-serif;font-size:13px;font-weight:700;color:var(--cyn);text-align:right;}
.lb-progress2{font-size:11px;color:var(--t2);text-align:right;}
.lb-progress2.up{color:var(--grn);}
.lb-progress2.down{color:var(--ros);}

/* ══════════════════════════════════════════
   ABONNEMENTS (onglet dédié)
══════════════════════════════════════════ */
.sub-plan-current{background:linear-gradient(135deg,rgba(68,82,217,.08),rgba(11,173,155,.06));border:2px solid rgba(68,82,217,.3);border-radius:16px;padding:20px;margin-bottom:16px;position:relative;overflow:hidden;}
.sub-plan-current::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;background:linear-gradient(90deg,var(--ind),var(--cyn));}
.sub-current-label{font-size:10px;font-weight:700;color:var(--ind);text-transform:uppercase;letter-spacing:.08em;margin-bottom:6px;}
.sub-current-plan{font-family:'Syne',sans-serif;font-size:22px;font-weight:900;color:var(--t1);margin-bottom:4px;}
.sub-current-price{font-size:13px;color:var(--t2);margin-bottom:12px;}
.sub-expire-row{display:flex;align-items:center;justify-content:space-between;padding:10px 12px;background:rgba(245,166,35,.07);border:1px solid rgba(245,166,35,.25);border-radius:9px;margin-bottom:12px;}
.sub-expire-label{font-size:11.5px;color:var(--amb);font-weight:600;}
.sub-expire-val{font-size:13px;font-weight:700;color:var(--amb);}
.sub-data-lock-info{background:var(--bg3);border:1px solid var(--b0);border-radius:9px;padding:11px 12px;font-size:11.5px;color:var(--t2);line-height:1.6;margin-bottom:12px;}
.sub-data-lock-info b{color:var(--t1);}
.sub-renew-btn{width:100%;padding:12px;background:linear-gradient(135deg,var(--ind),var(--cyn));border:none;border-radius:11px;font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:#fff;cursor:pointer;box-shadow:0 4px 16px rgba(68,82,217,.3);transition:all .2s;}
.sub-renew-btn:hover{transform:scale(1.02);}
.sub-history{background:var(--surf);border:1px solid var(--b0);border-radius:12px;overflow:hidden;margin-bottom:14px;}
.sub-hist-head{padding:12px 14px;border-bottom:1px solid var(--b0);font-size:11px;font-weight:700;color:var(--t3);text-transform:uppercase;letter-spacing:.07em;}
.sub-hist-row{display:flex;align-items:center;justify-content:space-between;padding:11px 14px;border-bottom:1px solid var(--b0);}
.sub-hist-row:last-child{border-bottom:none;}
.sub-hist-plan{font-size:12.5px;font-weight:600;color:var(--t1);}
.sub-hist-date{font-size:11px;color:var(--t2);}
.sub-hist-amount{font-size:12.5px;font-weight:700;color:var(--cyn);}
.sub-hist-status{font-size:10px;font-weight:700;padding:2px 8px;border-radius:4px;}
.sub-hist-status.paid{background:rgba(11,170,117,.1);color:var(--grn);}
.sub-hist-status.expired{background:var(--ros-g);color:var(--ros);}
/* Protection contenu — no download, no select */
.protected-content{-webkit-user-select:none;-moz-user-select:none;user-select:none;pointer-events:auto;}
.protected-content img{-webkit-user-drag:none;pointer-events:none;}
.no-dl-wrap{position:relative;overflow:hidden;}
.no-dl-wrap::after{content:'';position:absolute;inset:0;z-index:2;}

/* ── RESPONSIVE ── */
@media(max-width:768px){
  .eb-cards-grid{grid-template-columns:1fr;}
  .lb-meta-row{grid-template-columns:repeat(3,1fr);}
}
</style>
</head>
<body>
<svg width="0" height="0" style="position:absolute;pointer-events:none" aria-hidden="true">
  <defs>
    <linearGradient id="G1" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#18E0CB"/><stop offset="100%" stop-color="#9061F9"/>
    </linearGradient>
    <linearGradient id="G2" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#9061F9"/><stop offset="100%" stop-color="#F0618A"/>
    </linearGradient>
  </defs>
</svg>

<div class="bgsym">
  <span class="sym">∑</span><span class="sym">π</span><span class="sym">∫</span>
  <span class="sym">α</span><span class="sym">β</span><span class="sym">∞</span>
  <span class="sym">√</span><span class="sym">θ</span>
</div>

<!-- Logo template -->
<template id="logoTpl">
  <svg viewBox="0 0 100 100">
    <circle class="lr1" cx="50" cy="50" r="44" fill="none" stroke="url(#G1)" stroke-width="2.5" stroke-dasharray="60 30" opacity=".75"/>
    <circle class="lr2" cx="50" cy="50" r="33" fill="none" stroke="url(#G2)" stroke-width="2" stroke-dasharray="40 20" opacity=".65"/>
    <g class="lc">
      <circle cx="50" cy="50" r="20" fill="url(#G1)" opacity=".15"/>
      <text x="50" y="58" text-anchor="middle" font-family="Syne,sans-serif" font-size="28" font-weight="800" fill="url(#G1)">P</text>
    </g>
  </svg>
</template>

<!-- ══ LANDING ══ -->
<div class="view active" id="landing">
  <nav class="ln">
    <div class="ln-logo">
      <div class="lmark" id="lm1"></div>
      <div class="ln-name">Prépas Concours AI</div>
    </div>
    <div class="ln-btns">
      <button class="lbtn lbtn-ghost" onclick="showAuth('login')">Connexion</button>
      <button class="lbtn lbtn-cta" onclick="showAuth('register')">Commencer</button>
    </div>
  </nav>
  <div class="hero">
    <div class="hero-badge"><div class="hbdot"></div>Plateforme N°1 au Cameroun</div>
    <h1 class="hero-title">Passe de candidat perdu à<br><span class="hl">lauréat des grandes écoles</span></h1>
    <p class="hero-sub">Une IA entraînée sur les vraies épreuves camerounaises. Planning personnalisé. <b>Commence en 30 secondes.</b></p>
    <div class="hero-acts">
      <button class="hero-mcta" onclick="showAuth('register')">🚀 Commencer gratuitement</button>
      <button class="hero-scta" onclick="showAuth('login')">J'ai déjà un compte →</button>
    </div>
  </div>
  <div class="preview-wrap">
    <div class="preview-frame">
      <div class="pf-bar"><div class="pf-dots"><div class="pfd pfd1"></div><div class="pfd pfd2"></div><div class="pfd pfd3"></div></div><div class="pf-url"><div class="pf-udot"></div>prepasconcours.ai</div></div>
      <div class="pf-body">
        <div class="pf-stats">
          <div class="pf-stat"><span class="pf-sv a">247</span><span class="pf-sl">Questions</span></div>
          <div class="pf-stat"><span class="pf-sv b">72%</span><span class="pf-sl">Score</span></div>
          <div class="pf-stat"><span class="pf-sv c">8</span><span class="pf-sl">Épreuves</span></div>
          <div class="pf-stat"><span class="pf-sv d">14h</span><span class="pf-sl">Révision</span></div>
        </div>
        <div class="pf-chat">
          <div class="pf-msg u">Explique ENAM 2022 exercice 3</div>
          <div class="pf-msg b">Voici la correction étape par étape selon le programme officiel camerounais…</div>
        </div>
      </div>
    </div>
  </div>
  <div class="feats-section">
    <div class="sec-label">Fonctionnalités</div>
    <h2 class="sec-title">Tout ce qu'il faut pour réussir</h2>
    <div class="feats-grid">
      <div class="fc c1"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--ind2)" stroke-width="1.6" stroke-linecap="round"><path d="M12 2a10 10 0 1 0 10 10"/><path d="M12 6v6l4 2"/><circle cx="18" cy="6" r="3"/></svg></div><div class="fc-title">Professeur Privé IA</div><div class="fc-desc">Corrections étape par étape basées sur le programme officiel. Photos, vocaux, PDF.</div></div>
      <div class="fc c2"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--cyn)" stroke-width="1.6" stroke-linecap="round"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/></svg></div><div class="fc-title">Planning Personnalisé</div><div class="fc-desc">Un wizard crée ton planning sur-mesure selon ton concours et tes disponibilités.</div></div>
      <div class="fc c3"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--vio)" stroke-width="1.6" stroke-linecap="round"><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><circle cx="12" cy="12" r="10"/><line x1="12" y1="17" x2="12" y2="17"/></svg></div><div class="fc-title">Analyse des Faiblesses</div><div class="fc-desc">"73% de chances de perdre des points." L'IA détecte tes patterns d'erreurs.</div></div>
      <div class="fc c4"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--amb)" stroke-width="1.6" stroke-linecap="round"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg></div><div class="fc-title">Mode Concours Réel</div><div class="fc-desc">Chronomètre, bruit de salle, pression temps, classement national.</div></div>
      <div class="fc c5"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--grn)" stroke-width="1.6" stroke-linecap="round"><path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6"/><path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18"/><path d="M4 22h16"/><path d="M10 14.66V17c0 .55-.47.98-.97 1.21C7.85 18.75 7 20.24 7 22"/><path d="M14 14.66V17c0 .55.47.98.97 1.21C16.15 18.75 17 20.24 17 22"/><path d="M18 2H6v7a6 6 0 0 0 12 0V2z"/></svg></div><div class="fc-title">Classement & Niveaux</div><div class="fc-desc">Foundation → Mastery → Elite → Excellence+. Compare-toi aux 1 240 candidats.</div></div>
      <div class="fc c6"><div class="fc-ico-wrap"><svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="var(--ind2)" stroke-width="1.6" stroke-linecap="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"/><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"/></svg></div><div class="fc-title">Projets & Organisation</div><div class="fc-desc">Organise par concours, sauvegarde fiches et conversations.</div></div>
    </div>
  </div>
  <div class="ln-footer">
    <span>© 2026 Prépas Concours AI · Cameroun</span>
    <div style="display:flex;gap:14px;">
      <span style="cursor:pointer" onclick="showAuth('login')">Connexion</span>
      <span style="cursor:pointer" onclick="showAuth('register')">S'inscrire</span>
    </div>
  </div>
</div>

<!-- ══ AUTH ══ -->
<div class="view" id="auth">
  <div class="auth-card">
    <div class="auth-back" onclick="showLanding()">← Retour</div>
    <div class="auth-logo-row">
      <div class="auth-lmark" id="lm2"></div>
      <div style="font-family:'Syne',sans-serif;font-size:13.5px;font-weight:800;background:linear-gradient(135deg,#18E0CB,#9061F9);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;">Prépas Concours AI</div>
    </div>
    <div class="a-tabs">
      <div class="a-tab on" id="at-login" onclick="setAuthTab('login')">Se connecter</div>
      <div class="a-tab" id="at-register" onclick="setAuthTab('register')">S'inscrire</div>
    </div>
    <div id="af-login">
      <div class="auth-title">Bon retour 👋</div>
      <div class="auth-sub">Connecte-toi pour continuer</div>
      <div class="af">
        <div class="fg"><label class="fl">Téléphone ou email</label><input class="fi" placeholder="+237 6XX XXX XXX ou email"></div>
        <div class="fg"><label class="fl">Mot de passe</label><input type="password" class="fi" placeholder="••••••••"><div class="fh" style="color:var(--ind2);cursor:pointer">Mot de passe oublié ?</div></div>
        <button class="a-submit" onclick="showCS()">Se connecter →</button>
        <div class="a-div">ou</div>
        <button class="a-goog" onclick="showCS()"><svg width="16" height="16" viewBox="0 0 24 24"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg>Google</button>
      </div>
      <div class="sec-bdg">🔐 Connexion chiffrée SSL · OTP SMS</div>
    </div>
    <div id="af-register" style="display:none">
      <div class="auth-title">Crée ton compte 🚀</div>
      <div class="auth-sub">Rejoins <b>1 240 candidats</b></div>
      <div class="af">
        <div class="fr2"><div class="fg"><label class="fl">Prénom</label><input class="fi" placeholder="Mefire"></div><div class="fg"><label class="fl">Nom</label><input class="fi" placeholder="Fifen"></div></div>
        <div class="fg"><label class="fl">Téléphone (OTP)</label><input type="tel" class="fi" placeholder="+237 6XX XXX XXX"><div class="fh">Un code SMS sécurisera ton compte</div></div>
        <div class="fg"><label class="fl">Email</label><input type="email" class="fi" placeholder="ton@email.com"></div>
        <div class="fr2">
          <div class="fg"><label class="fl">Concours</label><select class="fsel"><option disabled selected>Choisir</option><option>ENAM</option><option>FMSB</option><option>ENSP</option><option>ENS</option><option>ESSEC</option><option>IUT</option></select></div>
          <div class="fg"><label class="fl">Niveau</label><select class="fsel"><option disabled selected>Choisir</option><option>Terminale</option><option>Post-Bac</option><option>Candidat libre</option><option>Redoublant</option></select></div>
        </div>
        <div class="fg"><label class="fl">Mot de passe</label><input type="password" class="fi" placeholder="8 caractères min."><div class="fh">Min. 8 car. · 1 majuscule · 1 chiffre</div></div>
        <button class="a-submit" onclick="showCS()">Créer mon compte →</button>
        <div class="a-div">ou</div>
        <button class="a-goog" onclick="showCS()"><svg width="16" height="16" viewBox="0 0 24 24"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg>Google</button>
        <div class="a-term">En t'inscrivant tu acceptes nos <a>CGU</a> et <a>Politique de confidentialité</a>.</div>
      </div>
      <div class="sec-bdg">🔐 OTP SMS · SSL · Anti-spam · Données chiffrées</div>
    </div>
  </div>
</div>

<!-- ══ CONCOURS SELECTOR ══ -->
<div class="view" id="cs-view">
  <div class="cs-hdr">
    <div class="cs-back" onclick="showAuth('register')">← Retour</div>
    <h2 class="cs-title">Quel concours <span>prépares-tu ?</span></h2>
    <p class="cs-sub">Choisis pour personnaliser ton planning</p>
  </div>
  <div class="cs-grid">
    <div class="csc ca" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--ind2)" stroke-width="1.6" stroke-linecap="round"><path d="M3 21h18M3 7v1a3 3 0 0 0 6 0V7m0 1a3 3 0 0 0 6 0V7m0 1a3 3 0 0 0 6 0V7H3l2-4h14l2 4"/><line x1="9" y1="21" x2="9" y2="14"/><line x1="15" y1="21" x2="15" y2="14"/></svg></div><div class="csc-code">ENAM</div><div class="csc-nm">Administration</div><div class="csc-cnt">47 épreuves</div></div>
    <div class="csc cb" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--cyn)" stroke-width="1.6" stroke-linecap="round"><path d="M22 12h-4l-3 9L9 3l-3 9H2"/></svg></div><div class="csc-code">FMSB</div><div class="csc-nm">Médecine</div><div class="csc-cnt">38 épreuves</div></div>
    <div class="csc cc" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--grn)" stroke-width="1.6" stroke-linecap="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg></div><div class="csc-code">ENSP</div><div class="csc-nm">Police</div><div class="csc-cnt">29 épreuves</div></div>
    <div class="csc cd" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--amb)" stroke-width="1.6" stroke-linecap="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"/><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"/></svg></div><div class="csc-code">ENS</div><div class="csc-nm">Enseignement</div><div class="csc-cnt">33 épreuves</div></div>
    <div class="csc ce" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--vio)" stroke-width="1.6" stroke-linecap="round"><line x1="12" y1="1" x2="12" y2="23"/><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg></div><div class="csc-code">ESSEC</div><div class="csc-nm">Commerce</div><div class="csc-cnt">22 épreuves</div></div>
    <div class="csc cf" onclick="pickCS(this)"><div class="csc-chk">✓</div><div class="csc-ico"><svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="var(--ros)" stroke-width="1.6" stroke-linecap="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg></div><div class="csc-code">IUT</div><div class="csc-nm">Technologie</div><div class="csc-cnt">18 épreuves</div></div>
  </div>
  <button class="cs-cta" id="csCta" disabled onclick="showWiz()">Créer mon planning →</button>
  <div class="cs-skip" onclick="enterApp()">Passer → entrer dans l'app</div>
</div>

<!-- ══ WIZARD ══ -->
<div class="view" id="wiz-view">
  <div class="wiz-card">
    <div class="wiz-prog" id="wizProg">
      <div class="ws-dot act">1</div><div class="ws-line"></div>
      <div class="ws-dot">2</div><div class="ws-line"></div>
      <div class="ws-dot">3</div><div class="ws-line"></div>
      <div class="ws-dot">4</div><div class="ws-line"></div>
      <div class="ws-dot">5</div>
    </div>
    <div id="wizContent"></div>
    <div class="wiz-nav">
      <button class="wiz-prev" id="wizPrevBtn" onclick="wizPrev()" style="display:none">← Préc.</button>
      <button class="wiz-next" id="wizNextBtn" onclick="wizNext()">Suivant →</button>
    </div>
  </div>
</div>

<!-- ══ MAIN APP ══ -->
<div class="view" id="app">
  <div class="pwa-banner" id="pwaBanner">
    <div class="pwa-icon">📱</div>
    <div class="pwa-text">
      <div class="pwa-title">Les élèves sérieux installent l'application</div>
      <div class="pwa-sub">Accès hors connexion · Depuis ton écran d'accueil</div>
    </div>
    <button class="pwa-btn" onclick="installPWA()">Installer</button>
    <button class="pwa-x" onclick="this.closest('.pwa-banner').style.display='none'">✕</button>
  </div>

  <div class="app-body">
    <div class="sb-overlay" id="sbOverlay" onclick="closeSB()"></div>

    <aside class="sidebar" id="sidebar">
      <div class="sb-top">
        <div class="sb-logo-row">
          <div class="sb-lmark" id="lm3"></div>
          <div><div class="sb-app-name">Prépas Concours AI</div><div class="sb-app-sub">Cameroun · 2026</div></div>
        </div>
        <div class="sb-top-actions">
          <div class="sb-theme-btn" onclick="toggleTheme()" id="themeBtn" title="Activer le mode sombre">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="var(--ind)" stroke-width="1.8" stroke-linecap="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg>
          </div>
          <div class="sb-close-btn" onclick="closeSB()">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
          </div>
        </div>
      </div>

      <div class="sb-upg" onclick="openModal()">
        <div class="sb-upg-row">
          <div class="sb-upg-ic">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg>
          </div>
          <div><div class="sb-upg-t">Mise à niveau</div><div class="sb-upg-s">Atteins le niveau MAJOR</div></div>
        </div>
      </div>

      <nav class="sb-nav">
        <div class="sb-sec">Principal</div>
        <div class="sbi on" onclick="goApp('home',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg></div>Accueil
        </div>
        <div class="sbi" onclick="goApp('chat',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 0 1 10 10c0 5.52-4.48 10-10 10H2v-10C2 6.48 6.48 2 12 2z"/><circle cx="8" cy="12" r="1" fill="currentColor"/><circle cx="12" cy="12" r="1" fill="currentColor"/><circle cx="16" cy="12" r="1" fill="currentColor"/></svg></div>Professeur IA
        </div>
        <div class="sbi" onclick="goApp('coach',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>Coach Méthodes
        </div>
        <div class="sbi" onclick="goApp('concours',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/></svg></div>Épreuves<div class="sbi-bg">+80</div>
        </div>
        <div class="sbi" onclick="goApp('planning',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="8" y1="14" x2="8" y2="14"/><line x1="12" y1="14" x2="12" y2="14"/><line x1="16" y1="14" x2="16" y2="14"/></svg></div>Planning
        </div>
        <div class="sbi" onclick="goApp('projects',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg></div>Projets
        </div>
        <div class="sbi" onclick="goApp('contest',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg></div>Mode Concours
        </div>
        <div class="sbi" onclick="goApp('exams',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="8" y1="14" x2="16" y2="14"/><line x1="8" y1="18" x2="12" y2="18"/></svg></div>Examens Blancs<div class="sbi-bg">Dim</div>
        </div>
        <div class="sbi" onclick="goApp('leaderboard',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6"/><path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18"/><path d="M4 22h16"/><path d="M10 14.66V17c0 .55-.47.98-.97 1.21C7.85 18.75 7 20.24 7 22"/><path d="M14 14.66V17c0 .55.47.98.97 1.21C16.15 18.75 17 20.24 17 22"/><path d="M18 2H6v7a6 6 0 0 0 12 0V2z"/></svg></div>Classement
        </div>
        <div class="sbi" onclick="goApp('stats',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><line x1="18" y1="20" x2="18" y2="10"/><line x1="12" y1="20" x2="12" y2="4"/><line x1="6" y1="20" x2="6" y2="14"/></svg></div>Statistiques
        </div>
        <div class="sbi" onclick="goApp('subscription',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"/><line x1="1" y1="10" x2="23" y2="10"/></svg></div>Abonnements
        </div>
        <div class="sbi" onclick="goApp('admin',this)">
          <div class="sbi-ic"><svg viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg></div>Admin Dashboard
        </div>
        <div class="sb-sec">Mes Concours</div>
        <div class="sbi"><div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M3 21h18M3 7v1a3 3 0 0 0 6 0V7m0 1a3 3 0 0 0 6 0V7m0 1a3 3 0 0 0 6 0V7H3l2-4h14l2 4"/></svg></div>ENAM</div>
        <div class="sbi"><div class="sbi-ic"><svg viewBox="0 0 24 24"><path d="M22 12h-4l-3 9L9 3l-3 9H2"/></svg></div>FMSB</div>
        <div class="sbi" style="color:var(--cyn);font-size:11.5px;"><div class="sbi-ic"><svg viewBox="0 0 24 24"><line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/></svg></div>Ajouter</div>
      </nav>

      <div class="sb-foot">
        <div class="sb-user" onclick="openProfile()">
          <div class="sb-uav">🎓</div>
          <div><div class="sb-unm">Mefire Fifen</div><div class="sb-upl"><div class="sb-udot"></div>MASTERY · Lvl 4</div></div>
          <div class="sb-settings">
            <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="3"/><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06A1.65 1.65 0 0 0 4.68 15a1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06A1.65 1.65 0 0 0 9 4.68a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06A1.65 1.65 0 0 0 19.4 9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"/></svg>
          </div>
        </div>
      </div>
    </aside>

    <main class="main-area">
      <!-- Mobile topbar -->
      <div class="mob-topbar">
        <div class="mob-menu" onclick="openSB()"><svg viewBox="0 0 24 24"><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="18" x2="21" y2="18"/></svg></div>
        <div class="mob-title">
          <div class="mob-title-ico" id="mobIco"><svg viewBox="0 0 24 24"><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg></div>
          <span id="mobTitle" style="font-size:13px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Accueil</span>
        </div>
        <div class="mob-r">
          <div class="mob-timer-btn" id="mobTimer" onclick="toggleTimerPop()">⏱ <span id="timerM">25:00</span></div>
        </div>
      </div>

      <!-- Desktop topbar -->
      <div class="desk-topbar">
        <div class="dt-l">
          <div class="dt-title">
            <div class="dt-title-ico" id="deskIco"><svg viewBox="0 0 24 24"><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg></div>
            <span id="deskTitle">Accueil</span>
          </div>
        </div>
        <div class="dt-r">
          <div class="dt-timer" id="deskTimer" onclick="toggleTimerPop()">⏱ <span id="timerD">25:00</span></div>
          <button class="dt-upg" onclick="openModal()">✦ Mise à niveau</button>
        </div>
      </div>

      <!-- HOME -->
      <div class="app-pane on" id="ap-home">
        <div class="pad">
          <!-- Alerte expiration abonnement (1 jour) -->
          <div class="alert-banner warn1" id="homeAlertExpire" style="margin-bottom:12px;">
            <div class="alert-ico">⚠️</div>
            <div class="alert-body">
              <div class="alert-title">Votre abonnement MASTERY expire demain</div>
              <div class="alert-desc">Vos données premium seront verrouillées. Renouvelez maintenant pour ne pas perdre votre progression.</div>
              <button class="alert-cta" onclick="openModal()">Renouveler — 2 500 F/mois</button>
            </div>
            <button class="alert-dismiss" onclick="this.closest('.alert-banner').style.display='none'">✕</button>
          </div>
          <!-- Alerte concours blanc demain matin -->
          <div class="eb-pre-alert" style="margin-bottom:12px;">
            <div class="eb-pre-alert-ico">⏰</div>
            <div class="eb-pre-alert-body">
              <div class="eb-pre-alert-title">Concours blanc ENAM demain à 13h00</div>
              <div class="eb-pre-alert-txt">Durée 4h · Envoi des réponses avant 22h. Révisez les notions de la semaine.</div>
            </div>
          </div>
          <div class="welcome">
            <div class="w-av">🎓</div>
            <div class="w-info"><div class="w-hi">Bonne journée,</div><div class="w-nm">Mefire <span>Fifen</span> 👋</div><div class="w-sub">ENAM dans <b>87 jours</b> · Continue !</div></div>
            <div class="w-streak"><div class="wsf">🔥</div><div><div class="wsn">×7</div><div class="wsl">streak</div></div></div>
          </div>
          <div class="rank-card">
            <div class="rk-hd"><div class="rk-ic">⚡</div><div><div class="rk-lbl">Niveau actuel</div><div class="rk-nm">SÉRIEUX → CONFIRMÉ</div></div></div>
            <div class="rk-bar"><div class="rk-fill"></div></div>
            <div class="rk-meta"><div class="rk-pts">2 480 / 4 000 XP</div><div class="rk-nxt">Prochain : <b>CONFIRMÉ</b></div></div>
          </div>
          <div class="stats-grid">
            <div class="sc"><span class="sc-i">💬</span><span class="sc-v a">247</span><span class="sc-k">Questions</span></div>
            <div class="sc"><span class="sc-i">🎯</span><span class="sc-v b">72%</span><span class="sc-k">Score</span></div>
            <div class="sc"><span class="sc-i">📄</span><span class="sc-v c">8</span><span class="sc-k">Épreuves</span></div>
            <div class="sc"><span class="sc-i">⏱️</span><span class="sc-v d">14h</span><span class="sc-k">Révision</span></div>
          </div>
          <div class="wk-card">
            <div class="wk-hd"><div class="wk-ic"><svg viewBox="0 0 24 24"><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><circle cx="12" cy="12" r="10"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg></div><div><div class="wk-ttl">Analyse intelligente de tes faiblesses</div><div class="wk-sub">8 dernières sessions</div></div></div>
            <div class="wk-alert"><div class="wk-txt"><span class="wk-pct">73%</span><b>de chances de perdre des points sur les Institutions</b> au prochain blanc ENAM.</div><div class="wk-cta" onclick="goApp('chat')">→ Plan d'action IA</div></div>
          </div>
          <div class="g2">
            <div class="pl-card">
              <div class="pl-hd"><div class="pl-ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/></svg></div><div><div class="pl-ttl">Aujourd'hui</div><div class="pl-sub2">Lundi 6 mai · ENAM</div></div></div>
              <div class="pl-item done"><div class="pl-cb">✓</div><div style="flex:1"><div class="pl-d">Histoire du Cameroun</div><div class="pl-t2">07:00 — 08:30</div></div><div class="pl-tag c">FAIT</div></div>
              <div class="pl-item now"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Épreuve ENAM CG 2022</div><div class="pl-t2">09:00 — 11:00</div></div><div class="pl-tag v">EN COURS</div></div>
              <div class="pl-item"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Correction IA + fiche</div><div class="pl-t2">14:00 — 15:30</div></div><div class="pl-tag a">À VENIR</div></div>
              <div class="pl-more" onclick="goApp('planning')">Planning complet →</div>
            </div>
            <div class="col-r">
              <div class="q-card"><div class="q-mk">"</div><div class="q-txt" id="qTxt">"Plus qu'une app de révision. Une intelligence d'entraînement pour les concours."</div><div class="q-by" id="qBy">Prépas Concours AI</div><div class="q-btn" onclick="newQuote()">↺ Nouvelle</div></div>
              <div class="mc-card" onclick="toggleMusic()"><div class="mc-disc" id="mcDisc">🎵</div><div class="mc-inf"><div class="mc-t">Musique focus</div><div class="mc-s" id="mcS">Appuie pour démarrer</div></div><div class="mc-waves"><div class="wb" id="wb1"></div><div class="wb" id="wb2"></div><div class="wb" id="wb3"></div><div class="wb" id="wb4"></div><div class="wb" id="wb5"></div></div><button class="mc-pbtn" id="mcBtn">▶</button></div>
            </div>
          </div>
          <div class="sh"><div class="sh-l">Accès rapide</div></div>
          <div class="qa-row" style="grid-template-columns:repeat(2,1fr);">
            <button class="qa-btn" onclick="goApp('chat',document.querySelector('[onclick*=\"chat\"]'))"><div class="qa-ico"><svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 0 1 10 10c0 5.52-4.48 10-10 10H2v-10C2 6.48 6.48 2 12 2z"/><circle cx="8" cy="12" r="1" fill="currentColor"/><circle cx="12" cy="12" r="1" fill="currentColor"/><circle cx="16" cy="12" r="1" fill="currentColor"/></svg></div><div><div class="qa-h">Professeur IA</div><div class="qa-d">Poser une question</div></div></button>
            <button class="qa-btn" onclick="goApp('exams',document.querySelector('[onclick*=\"exams\"]'))"><div class="qa-ico"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="8" y1="14" x2="16" y2="14"/></svg></div><div><div class="qa-h">Examens Blancs</div><div class="qa-d">Dimanche · Voir le planning</div></div></button>
            <button class="qa-btn" onclick="goApp('leaderboard',document.querySelector('[onclick*=\"leaderboard\"]'))"><div class="qa-ico"><svg viewBox="0 0 24 24"><path d="M18 2H6v7a6 6 0 0 0 12 0V2z"/><path d="M4 22h16"/></svg></div><div><div class="qa-h">Classement</div><div class="qa-d">Ta position · #23</div></div></button>
            <button class="qa-btn" onclick="openModal()"><div class="qa-ico"><svg viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg></div><div><div class="qa-h">Améliorer mon plan</div><div class="qa-d" style="color:var(--ros);">MASTERY expire demain</div></div></button>
          </div>
        </div>
      </div>

      <!-- CHAT -->
      <div class="app-pane-chat" id="ap-chat">
        <div class="chat-tabs">
          <div class="ct on">
            <div class="ct-ico"><svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 0 1 10 10c0 5.52-4.48 10-10 10H2v-10C2 6.48 6.48 2 12 2z"/><circle cx="8" cy="12" r="1" fill="currentColor"/><circle cx="12" cy="12" r="1" fill="currentColor"/><circle cx="16" cy="12" r="1" fill="currentColor"/></svg></div>Professeur Privé IA
          </div>
        </div>
        <div class="chat-empty" id="chatEmpty">
          <div class="ce-ico"><svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 0 1 10 10c0 5.52-4.48 10-10 10H2v-10C2 6.48 6.48 2 12 2z"/><path d="M8 10h.01M12 10h.01M16 10h.01"/></svg></div>
          <div class="ce-title">Professeur Privé IA</div>
          <div class="ce-sub">Pose tes questions, soumets des photos d'épreuves. Je raisonne comme un vrai professeur.</div>
          <div class="suggs">
            <div class="sugg" onclick="askSugg(this)">📝 ENAM 2022 exercice 3</div>
            <div class="sugg" onclick="askSugg(this)">🧮 Problème de maths</div>
            <div class="sugg" onclick="askSugg(this)">🏛️ Culture générale ENAM</div>
            <div class="sugg" onclick="askSugg(this)">📸 Analyser photo</div>
            <div class="sugg" onclick="askSugg(this)">💡 Astuces intégrales</div>
            <div class="sugg" onclick="askSugg(this)">⚠️ Mes erreurs fréquentes</div>
          </div>
        </div>
        <div class="msgs-area" id="msgsArea"></div>
        <div class="chat-inp-wrap">
          <div class="chat-inp-box">
            <textarea class="chat-ta" id="chatTA" placeholder="Pose ta question, joins une photo…" rows="1" onkeydown="handleChatKey(event)" oninput="autoResize(this)"></textarea>
            <div class="chat-inp-row">
              <div class="chat-inp-left">
                <button class="cin-act" title="Fichier" onclick="document.getElementById('fileIn').click()">
                  <svg viewBox="0 0 24 24"><path d="m21.44 11.05-9.19 9.19a6 6 0 0 1-8.49-8.49l8.57-8.57A4 4 0 1 1 18 8.84l-8.59 8.57a2 2 0 0 1-2.83-2.83l8.49-8.48"/></svg>
                </button>
                <button class="cin-mic" id="micBtn" title="Vocal" onclick="toggleMic()">
                  <svg viewBox="0 0 24 24"><rect x="9" y="2" width="6" height="11" rx="3"/><path d="M19 10v1a7 7 0 0 1-14 0v-1"/><line x1="12" y1="19" x2="12" y2="22"/><line x1="8" y1="22" x2="16" y2="22"/></svg>
                </button>
                <input type="file" id="fileIn" style="display:none" accept="image/*,.pdf" onchange="handleFile(this)">
              </div>
              <button class="cin-send" onclick="sendMsg()"><svg viewBox="0 0 24 24"><path d="M2 21L23 12 2 3v7l15 2-15 2z"/></svg></button>
            </div>
          </div>
          <div class="cin-hint">L'IA réfléchit 2–5 s · Photo, audio et PDF · Données chiffrées</div>
        </div>
      </div>

      <!-- COACH -->
      <div class="app-pane-chat" id="ap-coach">
        <div class="chat-tabs"><div class="ct on"><div class="ct-ico"><svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>Coach Méthodes</div></div>
        <div class="chat-empty">
          <div class="ce-ico" style="background:linear-gradient(135deg,#F5A623,#F0618A);"><svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>
          <div class="ce-title" style="background:linear-gradient(135deg,#F5A623,#F0618A);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;">Coach d'Apprentissage</div>
          <div class="ce-sub">J'analyse tes résultats pour te conseiller sur les meilleures méthodes d'étude.</div>
          <div class="suggs">
            <div class="sugg" onclick="askSugg(this)">🧠 Mieux mémoriser</div>
            <div class="sugg" onclick="askSugg(this)">⏰ Heures/jour</div>
            <div class="sugg" onclick="askSugg(this)">📊 Mes faiblesses</div>
            <div class="sugg" onclick="askSugg(this)">😰 Gérer le stress</div>
          </div>
        </div>
        <div class="chat-inp-wrap">
          <div class="chat-inp-box">
            <textarea class="chat-ta" placeholder="Conseil méthode…" rows="1" oninput="autoResize(this)"></textarea>
            <div class="chat-inp-row">
              <div class="chat-inp-left"><button class="cin-mic"><svg viewBox="0 0 24 24"><rect x="9" y="2" width="6" height="11" rx="3"/><path d="M19 10v1a7 7 0 0 1-14 0v-1"/><line x1="12" y1="19" x2="12" y2="22"/><line x1="8" y1="22" x2="16" y2="22"/></svg></button></div>
              <button class="cin-send"><svg viewBox="0 0 24 24"><path d="M2 21L23 12 2 3v7l15 2-15 2z"/></svg></button>
            </div>
          </div>
          <div class="cin-hint">Coach personnalisé · Basé sur tes performances</div>
        </div>
      </div>

      <!-- CONCOURS -->
      <div class="app-pane" id="ap-concours">
        <div class="pad">
          <div style="display:flex;align-items:center;gap:10px;background:var(--surf);border:1px solid var(--b0);border-radius:12px;padding:11px 14px;margin-bottom:18px;">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="var(--t3)" stroke-width="2" stroke-linecap="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
            <input style="flex:1;background:none;border:none;outline:none;font-size:13px;color:var(--t1);" placeholder="Rechercher…">
          </div>
          <div class="sh"><div class="sh-l">Tous les concours</div></div>
          <div class="cc-grid">
            <div class="cc a"><div class="cc-code">ENAM</div><div class="cc-name">Administration</div><div class="cc-meta"><div class="cc-cnt">47 épreuves</div></div></div>
            <div class="cc b"><div class="cc-code">FMSB</div><div class="cc-name">Médecine</div><div class="cc-meta"><div class="cc-cnt">38 épreuves</div></div></div>
            <div class="cc c"><div class="cc-code">ENSP</div><div class="cc-name">Police</div><div class="cc-meta"><div class="cc-cnt">29 épreuves</div></div></div>
            <div class="cc d"><div class="cc-code">ENS</div><div class="cc-name">Enseignement</div><div class="cc-meta"><div class="cc-cnt">33 épreuves</div></div></div>
            <div class="cc e"><div class="cc-code">ESSEC</div><div class="cc-name">Commerce</div><div class="cc-meta"><div class="cc-cnt">22 épreuves</div></div></div>
            <div class="cc f"><div class="cc-code">IUT</div><div class="cc-name">Technologie</div><div class="cc-meta"><div class="cc-cnt">18 épreuves</div></div></div>
          </div>
        </div>
      </div>

      <!-- PLANNING INTELLIGENT -->
      <div class="app-pane" id="ap-planning">
        <div class="pad">
          <!-- Alerte expiration 2 jours -->
          <div class="alert-banner warn2" id="alertExpire">
            <div class="alert-ico">⏳</div>
            <div class="alert-body">
              <div class="alert-title">Votre abonnement MASTERY expire dans 2 jours</div>
              <div class="alert-desc">Vos concours, recherches, exercices et données premium seront verrouillés. Renouvelez maintenant pour continuer sans interruption.</div>
              <button class="alert-cta" onclick="openModal()">Renouveler mon abonnement</button>
            </div>
            <button class="alert-dismiss" onclick="this.closest('.alert-banner').style.display='none'">✕</button>
          </div>

          <div class="welcome" style="margin-bottom:14px;">
            <div class="w-av" style="background:linear-gradient(135deg,#D98412,#E14B7A);">📅</div>
            <div class="w-info"><div class="w-hi">Planning intelligent · ENAM 2026</div><div class="w-nm">Semaine <span>12 sur 16</span></div><div class="w-sub">87 jours restants · 3-4h recommandées/jour</div></div>
          </div>

          <!-- Tabs semaine -->
          <div class="plan-tabs">
            <div class="plan-tab on" onclick="setPlTab(this,'ptd')">Aujourd'hui</div>
            <div class="plan-tab" onclick="setPlTab(this,'ptw')">Cette semaine</div>
            <div class="plan-tab" onclick="setPlTab(this,'ptp')">Programme</div>
          </div>

          <!-- ONGLET AUJOURD'HUI -->
          <div id="ptd">
            <div class="plan-level-badge mastery">📋 Planning MASTERY — Hebdomadaire structuré</div>
            <div class="day-plan-card">
              <div class="dpc-head">
                <div class="dpc-day-badge">Mercredi</div>
                <div><div class="dpc-title">Culture Générale</div><div class="dpc-sub">Jour 3 de la semaine · Épreuve ENAM 2022</div></div>
              </div>
              <div class="dpc-matières">
                <span class="dpc-mat m1">Histoire du Cameroun</span>
                <span class="dpc-mat m2">Géographie</span>
                <span class="dpc-mat m3">Institutions</span>
              </div>
              <div class="dpc-section-title">📚 Notions à maîtriser aujourd'hui</div>
              <div class="dpc-notion"><div class="dpc-notion-dot"></div><div class="dpc-notion-txt">Fonctionnement des institutions de la République du Cameroun</div></div>
              <div class="dpc-notion"><div class="dpc-notion-dot"></div><div class="dpc-notion-txt">Découpage administratif et structure de l'État</div></div>
              <div class="dpc-notion"><div class="dpc-notion-dot"></div><div class="dpc-notion-txt">Raisonnement logique et méthode QCM concours</div></div>
              <div class="dpc-section-title">✏️ Exercices d'application</div>
              <div class="dpc-exo"><div class="dpc-diff f">Facile</div><div style="flex:1;font-size:12px;color:var(--t1);">QCM Institutions — 15 questions · ENAM 2019</div></div>
              <div class="dpc-exo"><div class="dpc-diff m">Moyen</div><div style="flex:1;font-size:12px;color:var(--t1);">Analyse texte administratif — 30 min</div></div>
              <div class="dpc-exo"><div class="dpc-diff h">Difficile</div><div style="flex:1;font-size:12px;color:var(--t1);">Problème Culture Générale · ENAM 2022 · Sujet complet</div></div>
              <div class="dpc-eval">
                <div class="dpc-eval-title"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="12" cy="12" r="10"/><polyline points="9 12 11 14 15 10"/></svg>Évaluation de fin de journée</div>
                <div class="dpc-eval-txt">5 questions courtes pour vérifier l'assimilation des notions du jour. Durée : 15 minutes. Résultats immédiats.</div>
              </div>
              <div class="dpc-cta-row">
                <button class="dpc-btn primary" onclick="goApp('chat',document.querySelector('.sbi'))">Commencer avec le Professeur IA</button>
                <button class="dpc-btn secondary">Voir les cours</button>
              </div>
            </div>
          </div>

          <!-- ONGLET SEMAINE -->
          <div id="ptw" style="display:none;">
            <div class="plan-level-badge mastery">📋 Planning MASTERY — Vue hebdomadaire</div>
            <div class="pl-card">
              <div class="pl-hd"><div class="pl-ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/></svg></div><div><div class="pl-ttl">Semaine 12 · Culture Générale & Raisonnement</div><div class="pl-sub2">Dimanche : Concours blanc ENAM à 13h00</div></div></div>
              <div class="pl-item done"><div class="pl-cb">✓</div><div style="flex:1"><div class="pl-d">Lundi · Histoire du Cameroun</div><div class="pl-t2">3h · Éval : 18/20</div></div><div class="pl-tag c">FAIT</div></div>
              <div class="pl-item done"><div class="pl-cb">✓</div><div style="flex:1"><div class="pl-d">Mardi · Géographie</div><div class="pl-t2">3h · Éval : 14/20</div></div><div class="pl-tag c">FAIT</div></div>
              <div class="pl-item now"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Mercredi · Institutions + Épreuve ENAM 2022</div><div class="pl-t2">3h30</div></div><div class="pl-tag v">EN COURS</div></div>
              <div class="pl-item"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Jeudi · Droit Civil & Droit Public</div><div class="pl-t2">4h</div></div><div class="pl-tag a">À VENIR</div></div>
              <div class="pl-item"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Vendredi · Révisions & Mini-test</div><div class="pl-t2">3h</div></div><div class="pl-tag a">À VENIR</div></div>
              <div class="pl-item"><div class="pl-cb"></div><div style="flex:1"><div class="pl-d">Samedi · Épreuve complète 2021</div><div class="pl-t2">4h · Chrono</div></div><div class="pl-tag a">À VENIR</div></div>
              <div class="pl-item" style="border-color:var(--ros);"><div class="pl-cb" style="border-color:var(--ros);"></div><div style="flex:1"><div class="pl-d">Dimanche · 🏆 Concours Blanc ENAM</div><div class="pl-t2">Début 13h00 · 4h · Envoi avant 22h</div></div><div class="pl-tag" style="background:rgba(225,75,122,.12);color:var(--ros);">BLANC</div></div>
            </div>
          </div>

          <!-- ONGLET PROGRAMME -->
          <div id="ptp" style="display:none;">
            <div class="plan-level-badge mastery">📋 MASTERY — Programme 16 semaines</div>
            <div style="background:var(--surf);border:1px solid var(--b0);border-radius:12px;overflow:hidden;">
              <div style="padding:12px 14px;border-bottom:1px solid var(--b0);font-size:11px;font-weight:700;color:var(--t3);text-transform:uppercase;letter-spacing:.07em;">Progression globale</div>
              <div style="padding:12px 14px;">
                <div class="corr-bar-row"><div class="corr-bar-lbl">Culture Générale</div><div class="corr-bar-track"><div class="corr-bar-fill good" style="width:67%"></div></div><div class="corr-bar-pct">67%</div></div>
                <div class="corr-bar-row"><div class="corr-bar-lbl">Droit & Institutions</div><div class="corr-bar-track"><div class="corr-bar-fill avg" style="width:44%"></div></div><div class="corr-bar-pct">44%</div></div>
                <div class="corr-bar-row"><div class="corr-bar-lbl">Raisonnement Logique</div><div class="corr-bar-track"><div class="corr-bar-fill good" style="width:78%"></div></div><div class="corr-bar-pct">78%</div></div>
                <div class="corr-bar-row"><div class="corr-bar-lbl">Rédaction</div><div class="corr-bar-track"><div class="corr-bar-fill low" style="width:31%"></div></div><div class="corr-bar-pct">31%</div></div>
              </div>
            </div>
            <!-- Feature lock pour Elite+ -->
            <div style="margin-top:12px;position:relative;">
              <div style="filter:blur(3px);pointer-events:none;opacity:.4;background:var(--surf);border:1px solid var(--b0);border-radius:12px;padding:14px;">
                <div style="font-size:12px;color:var(--t2);">Programme adapté selon vos faiblesses · Prochaines 4 semaines ajustées · Recommandations personnalisées…</div>
              </div>
              <div class="plan-lock-overlay">
                <div class="lock-ico">🔒</div>
                <div class="lock-txt">Adaptation automatique du programme disponible à partir du plan <b>Élite</b></div>
                <button class="plan-lock-btn" onclick="openModal()">Passer à Élite</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- PROJECTS -->
      <div class="app-pane" id="ap-projects">
        <div class="pad">
          <div style="font-family:'Syne',sans-serif;font-size:20px;font-weight:800;color:var(--t1);margin-bottom:4px;">Mes Projets</div>
          <div style="font-size:12.5px;color:var(--t2);margin-bottom:16px;">Organise tes révisions par concours</div>
          <button class="new-pj-btn">+ Nouveau projet</button>
          <div class="proj-grid">
            <div class="pj pa"><span class="pj-ico">🏛️</span><div class="pj-nm">Préparation ENAM 2026</div><div class="pj-desc">Épreuves, fiches et planning ENAM.</div><div class="pj-meta"><div class="pj-tag">ENAM</div><div class="pj-date">Aujourd'hui</div></div></div>
            <div class="pj pb"><span class="pj-ico">📐</span><div class="pj-nm">Maths — Analyse</div><div class="pj-desc">Intégrales, suites, équations.</div><div class="pj-meta"><div class="pj-tag">Maths</div><div class="pj-date">Hier</div></div></div>
            <div class="pj pc"><span class="pj-ico">📜</span><div class="pj-nm">Culture Générale</div><div class="pj-desc">Institutions, Histoire, Géographie.</div><div class="pj-meta"><div class="pj-tag">Culture</div><div class="pj-date">Il y a 3j</div></div></div>
          </div>
        </div>
      </div>

      <!-- CONTEST -->
      <div class="app-pane" id="ap-contest">
        <div class="pad">
          <div class="welcome" style="margin-bottom:16px;"><div class="w-av" style="background:linear-gradient(135deg,#F0618A,#9061F9);">⚡</div><div class="w-info"><div class="w-hi">Mode immersion</div><div class="w-nm">Mode <span>Concours Réel</span></div><div class="w-sub">Chronomètre · Bruit de salle · Classement</div></div></div>
          <div class="cc-grid">
            <div class="cc a"><div class="cc-code">ENAM</div><div class="cc-name">Blanc · 4h</div><div class="cc-meta"><div class="cc-cnt">⚡ Démarrer</div></div></div>
            <div class="cc b"><div class="cc-code">FMSB</div><div class="cc-name">Blanc · 3h</div><div class="cc-meta"><div class="cc-cnt">⚡ Démarrer</div></div></div>
            <div class="cc c"><div class="cc-code">ENSP</div><div class="cc-name">Blanc · 3h30</div><div class="cc-meta"><div class="cc-cnt">⚡ Démarrer</div></div></div>
            <div class="cc d"><div class="cc-code">ENS</div><div class="cc-name">Blanc · 4h</div><div class="cc-meta"><div class="cc-cnt">⚡ Démarrer</div></div></div>
          </div>
        </div>
      </div>

      <!-- EXAMENS BLANCS (nouveau pane) -->
      <div class="app-pane" id="ap-exams">
        <div class="pad">
          <!-- Alerte avant examen demain -->
          <div class="eb-pre-alert">
            <div class="eb-pre-alert-ico">⏰</div>
            <div class="eb-pre-alert-body">
              <div class="eb-pre-alert-title">Concours blanc ENAM demain à 13h00</div>
              <div class="eb-pre-alert-txt">Révisez les notions de la semaine, reposez-vous bien. Durée : 4h · Envoi des réponses avant 22h. Chaque entraînement vous rapproche de la réussite.</div>
            </div>
          </div>
          <div class="welcome" style="margin-bottom:14px;">
            <div class="w-av" style="background:linear-gradient(135deg,#E14B7A,#7B47E0);">⚡</div>
            <div class="w-info"><div class="w-hi">Examens blancs hebdomadaires · Chaque dimanche</div><div class="w-nm">Semaine <span>12</span></div><div class="w-sub">Mesure ta progression · Classement dimanche soir</div></div>
          </div>

          <!-- Compte à rebours prochain blanc -->
          <div class="eb-header">
            <div style="font-family:'Syne',sans-serif;font-size:14px;font-weight:700;color:var(--t1);margin-bottom:4px;">Prochain concours blanc · ENAM</div>
            <div style="font-size:11px;color:var(--t2);margin-bottom:10px;">Dimanche 18 mai · 13h00 · Durée 4h · Envoi avant 22h</div>
            <div class="eb-countdown">
              <div class="eb-cd-unit"><div class="eb-cd-val" id="cd-d">00</div><div class="eb-cd-lbl">Jours</div></div>
              <div class="eb-cd-sep">:</div>
              <div class="eb-cd-unit"><div class="eb-cd-val" id="cd-h">23</div><div class="eb-cd-lbl">Heures</div></div>
              <div class="eb-cd-sep">:</div>
              <div class="eb-cd-unit"><div class="eb-cd-val" id="cd-m">47</div><div class="eb-cd-lbl">Min</div></div>
              <div class="eb-cd-sep">:</div>
              <div class="eb-cd-unit"><div class="eb-cd-val" id="cd-s">12</div><div class="eb-cd-lbl">Sec</div></div>
            </div>
          </div>

          <div class="sh"><div class="sh-l">Examens blancs de cette semaine</div></div>
          <div class="eb-cards-grid">
            <!-- ENAM — À VENIR -->
            <div class="eb-card c1">
              <div class="eb-card-head">
                <div class="eb-concours">ENAM</div>
                <div class="eb-status upcoming">À venir</div>
              </div>
              <div class="eb-time-row">
                <svg class="eb-time-ic" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                Dimanche 18 mai · <b>13h00</b> · 4h
              </div>
              <div class="eb-details">Envoi des réponses jusqu'à 22h00<br>Correction automatique dans la nuit · Classement lundi matin</div>
              <div class="eb-cta-row">
                <button class="eb-btn start" onclick="alert('L\'examen blanc ENAM commence dimanche à 13h00 !')">Se préparer</button>
                <button class="eb-btn view" onclick="goApp('planning',document.querySelector('.sbi'))">Voir le planning</button>
              </div>
            </div>
            <!-- FMSB — EN COURS -->
            <div class="eb-card c2">
              <div class="eb-card-head">
                <div class="eb-concours">FMSB</div>
                <div class="eb-status live">🔴 En cours</div>
              </div>
              <div class="eb-time-row">
                <svg class="eb-time-ic" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                Dimanche 11 mai · <b>14h00</b> · 3h · Fin : 17h00
              </div>
              <div class="eb-details">Envoi des réponses jusqu'à 22h00<br><b style="color:var(--ros);">Temps restant : 1h 23min</b></div>
              <div class="eb-cta-row">
                <button class="eb-btn submit" onclick="alert('Envoyez vos réponses pour correction IA !')">Envoyer mes réponses</button>
              </div>
            </div>
            <!-- ENS — CORRECTIONS DISPO -->
            <div class="eb-card c3">
              <div class="eb-card-head">
                <div class="eb-concours">ENS</div>
                <div class="eb-status corrections">Corrections dispo</div>
              </div>
              <div class="eb-time-row">
                <svg class="eb-time-ic" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                Dimanche 4 mai · Terminé
              </div>
              <div class="eb-score-row">
                <div class="eb-score-val">14.5<span style="font-size:13px;color:var(--t2)">/20</span></div>
                <div style="flex:1"><div class="eb-score-detail">+2 points vs semaine dernière</div><div class="eb-rank">🏅 Classé #23 sur 180</div></div>
              </div>
              <div class="eb-cta-row">
                <button class="eb-btn view" onclick="goApp('correction',document.querySelector('.sbi'))">Voir ma correction</button>
              </div>
            </div>
            <!-- ESSEC — TERMINÉ -->
            <div class="eb-card c4">
              <div class="eb-card-head">
                <div class="eb-concours">ESSEC</div>
                <div class="eb-status done">Terminé</div>
              </div>
              <div class="eb-time-row">
                <svg class="eb-time-ic" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                Dimanche 27 avril · 16h00 · 3h
              </div>
              <div class="eb-score-row">
                <div class="eb-score-val">11.0<span style="font-size:13px;color:var(--t2)">/20</span></div>
                <div style="flex:1"><div class="eb-score-detail">Score moyen groupe : 10.4</div><div class="eb-rank">📊 Classé #47 sur 95</div></div>
              </div>
              <div class="eb-cta-row">
                <button class="eb-btn view">Voir ma correction</button>
              </div>
            </div>
          </div>

          <!-- Section correction détaillée -->
          <div class="sh" style="margin-top:6px;"><div class="sh-l">Dernière correction · ENS — Semaine 11</div><span class="sh-r" onclick="goApp('stats',document.querySelector('.sbi'))">Toutes mes stats →</span></div>
          <div class="correction-card">
            <div class="corr-score-header">
              <div class="corr-score-big">14.5</div>
              <div class="corr-score-sub">sur 20 · Mieux que 72% des candidats</div>
              <div class="corr-rank-badge">🏅 Classé #23 sur 180 candidats ENS</div>
            </div>
            <div class="corr-section">
              <div class="corr-section-title"><span style="color:var(--grn);">✓</span> Points forts</div>
              <div class="corr-item good"><div class="corr-ic">✓</div><div class="corr-txt"><b>Mathématiques</b> — Excellent niveau en analyse. 17/20 dans cette matière. <small>Continue à ce rythme.</small></div></div>
              <div class="corr-item good"><div class="corr-ic">✓</div><div class="corr-txt"><b>Raisonnement logique</b> — Méthode bien maîtrisée. 15.5/20. <small>Bonne gestion du temps.</small></div></div>
            </div>
            <div class="corr-section">
              <div class="corr-section-title"><span style="color:var(--ros);">!</span> Points à améliorer</div>
              <div class="corr-item bad"><div class="corr-ic">✗</div><div class="corr-txt"><b>Institutions du Cameroun</b> — 9/20. Les textes fondamentaux pas encore bien assimilés. <small>Priorité : semaine 13.</small></div></div>
              <div class="corr-item bad"><div class="corr-ic">✗</div><div class="corr-txt"><b>Rédaction administrative</b> — 10/20. La structure du rapport administratif reste floue. <small>Revoir les modèles types.</small></div></div>
            </div>
            <div class="corr-section">
              <div class="corr-section-title">📊 Progression par matière</div>
              <div class="corr-bar-row"><div class="corr-bar-lbl">Mathématiques</div><div class="corr-bar-track"><div class="corr-bar-fill good" style="width:85%"></div></div><div class="corr-bar-pct">17/20</div></div>
              <div class="corr-bar-row"><div class="corr-bar-lbl">Raisonnement</div><div class="corr-bar-track"><div class="corr-bar-fill good" style="width:77%"></div></div><div class="corr-bar-pct">15.5/20</div></div>
              <div class="corr-bar-row"><div class="corr-bar-lbl">Culture Générale</div><div class="corr-bar-track"><div class="corr-bar-fill avg" style="width:70%"></div></div><div class="corr-bar-pct">14/20</div></div>
              <div class="corr-bar-row"><div class="corr-bar-lbl">Institutions</div><div class="corr-bar-track"><div class="corr-bar-fill low" style="width:45%"></div></div><div class="corr-bar-pct">9/20</div></div>
              <div class="corr-bar-row"><div class="corr-bar-lbl">Rédaction</div><div class="corr-bar-track"><div class="corr-bar-fill low" style="width:50%"></div></div><div class="corr-bar-pct">10/20</div></div>
            </div>
            <div class="corr-reco">
              <div class="corr-reco-title"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>Recommandations pour la semaine 13</div>
              <div class="corr-reco-item"><div class="corr-reco-num">1</div>Consacre 2h supplémentaires aux Institutions du Cameroun (Constitution, décrets, lois fondamentales).</div>
              <div class="corr-reco-item"><div class="corr-reco-num">2</div>Entraîne-toi sur 3 sujets de rédaction administrative types (note de service, rapport, compte rendu).</div>
              <div class="corr-reco-item"><div class="corr-reco-num">3</div>Continue ton excellente dynamique en Mathématiques — maintiens cet avantage stratégique.</div>
            </div>
          </div>
        </div>
      </div>

      <!-- LEADERBOARD amélioré par concours -->
      <div class="app-pane" id="ap-leaderboard">
        <div class="pad">
          <!-- Alerte expiration 7 jours -->
          <div class="alert-banner warn7" id="alertExpire7">
            <div class="alert-ico">👋</div>
            <div class="alert-body">
              <div class="alert-title">Votre abonnement MASTERY expire dans 7 jours</div>
              <div class="alert-desc">Renouvelez pour continuer à accéder à vos concours, votre classement et vos données premium.</div>
              <button class="alert-cta" onclick="openModal()">Renouveler maintenant</button>
            </div>
            <button class="alert-dismiss" onclick="this.closest('.alert-banner').style.display='none'">✕</button>
          </div>

          <div class="welcome" style="margin-bottom:14px;">
            <div class="w-av" style="background:linear-gradient(135deg,#D98412,#7B47E0);">🏆</div>
            <div class="w-info"><div class="w-hi">Classement après concours blanc — Dimanche 11 mai</div><div class="w-nm">Tu es <span>#23</span> sur ENS</div><div class="w-sub">Classement mis à jour chaque lundi matin</div></div>
          </div>

          <!-- Tabs concours -->
          <div class="lb-tabs" id="lbTabs">
            <div class="lb-tab on" onclick="setLbTab(this,'ENAM')">ENAM</div>
            <div class="lb-tab" onclick="setLbTab(this,'FMSB')">FMSB</div>
            <div class="lb-tab" onclick="setLbTab(this,'ENS')">ENS</div>
            <div class="lb-tab" onclick="setLbTab(this,'ENSP')">ENSP</div>
            <div class="lb-tab" onclick="setLbTab(this,'ESSEC')">ESSEC</div>
            <div class="lb-tab" onclick="setLbTab(this,'IUT')">IUT</div>
          </div>

          <!-- Stats globales -->
          <div class="lb-meta-row">
            <div class="lb-meta-card"><div class="lb-meta-val v1" id="lb-total">1 240</div><div class="lb-meta-lbl">Candidats</div></div>
            <div class="lb-meta-card"><div class="lb-meta-val v2" id="lb-avg">12.4</div><div class="lb-meta-lbl">Moy. générale</div></div>
            <div class="lb-meta-card"><div class="lb-meta-val v3" id="lb-myrank">#23</div><div class="lb-meta-lbl">Mon rang</div></div>
          </div>

          <!-- Tableau classement -->
          <div class="lb-table-wrap">
            <div class="lb-table-head">
              <div>#</div><div>Candidat</div><div style="text-align:right">Note</div><div style="text-align:right">Évol.</div>
            </div>
            <div id="lbTableBody">
              <div class="lb-row2"><div class="lb-pos2 g2">1</div><div class="lb-player"><div class="lb-av2">AT</div><div><div class="lb-pnm">Aïcha Tabi</div><div class="lb-plan-tag">EXCELLENCE</div></div></div><div class="lb-score2">18.5/20</div><div class="lb-progress2 up">▲ +1.5</div></div>
              <div class="lb-row2"><div class="lb-pos2 s2">2</div><div class="lb-player"><div class="lb-av2">JM</div><div><div class="lb-pnm">Junior Mbarga</div><div class="lb-plan-tag" style="background:var(--cyn-g);color:var(--cyn);">ÉLITE</div></div></div><div class="lb-score2">17.0/20</div><div class="lb-progress2 up">▲ +0.5</div></div>
              <div class="lb-row2"><div class="lb-pos2 b2">3</div><div class="lb-player"><div class="lb-av2">SE</div><div><div class="lb-pnm">Sandrine Eboa</div><div class="lb-plan-tag" style="background:var(--cyn-g);color:var(--cyn);">ÉLITE</div></div></div><div class="lb-score2">16.5/20</div><div class="lb-progress2 down">▼ -0.5</div></div>
              <div class="lb-row2"><div class="lb-pos2 d2">4</div><div class="lb-player"><div class="lb-av2">EN</div><div><div class="lb-pnm">Eric Nguelle</div><div class="lb-plan-tag">MASTERY</div></div></div><div class="lb-score2">15.5/20</div><div class="lb-progress2 up">▲ +2.0</div></div>
              <div class="lb-row2"><div class="lb-pos2 d2">5</div><div class="lb-player"><div class="lb-av2">PM</div><div><div class="lb-pnm">Parfait Manga</div><div class="lb-plan-tag" style="background:var(--cyn-g);color:var(--cyn);">ÉLITE</div></div></div><div class="lb-score2">15.0/20</div><div class="lb-progress2 up">▲ +1.0</div></div>
              <div style="height:1px;background:var(--b0);margin:3px 0;"></div>
              <div class="lb-row2 me2"><div class="lb-pos2 d2">23</div><div class="lb-player"><div class="lb-av2" style="background:linear-gradient(135deg,var(--ind),var(--cyn));">MF</div><div><div class="lb-pnm">Mefire Fifen <span style="font-size:10px;color:var(--cyn);">(Toi)</span></div><div class="lb-plan-tag">MASTERY</div></div></div><div class="lb-score2">14.5/20</div><div class="lb-progress2 up">▲ +2.0</div></div>
            </div>
          </div>
          <div style="margin-top:10px;text-align:center;font-size:11px;color:var(--t3);">Classement basé sur les résultats du concours blanc du dimanche · Mis à jour chaque lundi à 6h00</div>
        </div>
      </div>

      <!-- STATS -->
      <div class="app-pane" id="ap-stats">
        <div class="pad">
          <div class="sh"><div class="sh-l">Progression par matière</div></div>
          <div class="pg-card"><div class="pg-hd"><div class="pg-nm">ENAM — Culture Générale</div><div class="pg-pc a">67%</div></div><div class="pg-bar"><div class="pg-fill a" style="width:67%"></div></div><div class="chips"><div class="chip ok">✓ Droit Civil</div><div class="chip mid">⟳ Histoire</div><div class="chip low">! Institutions</div></div></div>
          <div class="pg-card"><div class="pg-hd"><div class="pg-nm">FMSB — Sciences</div><div class="pg-pc b">54%</div></div><div class="pg-bar"><div class="pg-fill b" style="width:54%"></div></div><div class="chips"><div class="chip ok">✓ Physique</div><div class="chip low">! Chimie</div><div class="chip mid">⟳ SVT</div></div></div>
          <div class="pg-card"><div class="pg-hd"><div class="pg-nm">Mathématiques</div><div class="pg-pc c">81%</div></div><div class="pg-bar"><div class="pg-fill c" style="width:81%"></div></div><div class="chips"><div class="chip ok">✓ Analyse</div><div class="chip ok">✓ Algèbre</div><div class="chip mid">⟳ Probas</div></div></div>
        </div>
      </div>

      <!-- ABONNEMENTS -->
      <div class="app-pane" id="ap-subscription">
        <div class="pad">
          <div style="font-family:'Syne',sans-serif;font-size:20px;font-weight:800;color:var(--t1);margin-bottom:4px;">Mon Abonnement</div>
          <div style="font-size:12.5px;color:var(--t2);margin-bottom:16px;">Gérez votre plan · Historique des paiements</div>

          <!-- Alerte 1 jour -->
          <div class="alert-banner warn1" style="margin-bottom:16px;">
            <div class="alert-ico">⚠️</div>
            <div class="alert-body">
              <div class="alert-title">Dernier rappel — Votre abonnement expire demain !</div>
              <div class="alert-desc">Si vous ne renouvelez pas maintenant, vos contenus premium seront verrouillés et vous repasserez en mode Fondation. Vos données restent sauvegardées mais inaccessibles.</div>
              <button class="alert-cta" onclick="openModal()">⚡ Renouveler maintenant</button>
            </div>
          </div>

          <!-- Plan actif -->
          <div class="sub-plan-current">
            <div class="sub-current-label">Plan actif</div>
            <div class="sub-current-plan">MASTERY</div>
            <div class="sub-current-price">2 500 FCFA / mois · IA Standard · Jusqu'à 5 concours</div>
            <div class="sub-expire-row">
              <div class="sub-expire-label">⏳ Expire le</div>
              <div class="sub-expire-val">12 mai 2026 · Dans 1 jour</div>
            </div>
            <div class="sub-data-lock-info">
              <b>Ce qui sera verrouillé après expiration :</b> vos concours MASTERY, vos recherches et échanges avec le Professeur IA, vos exercices traités, vos corrections, plannings et données de progression liés à ce plan.<br><br>
              Vos données ne sont pas supprimées — elles restent rattachées à votre compte. Pour y accéder à nouveau, renouvelez <b>MASTERY</b> ou passez à un plan supérieur (<b>Élite</b> ou <b>Excellence</b>).
            </div>
            <button class="sub-renew-btn" onclick="openModal()">Renouveler MASTERY — 2 500 F/mois</button>
          </div>

          <!-- Comparatif plans courts -->
          <div style="background:var(--surf);border:1px solid var(--b0);border-radius:14px;overflow:hidden;margin-bottom:14px;">
            <div style="padding:12px 14px;border-bottom:1px solid var(--b0);font-family:'Syne',sans-serif;font-size:13px;font-weight:700;color:var(--t1);">Passer à un plan supérieur</div>
            <div style="padding:12px 14px;display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid var(--b0);">
              <div><div style="font-size:13px;font-weight:700;color:var(--cyn);">ÉLITE</div><div style="font-size:11px;color:var(--t2);">10 concours · Planning détaillé · Analyse erreurs · Classement</div></div>
              <button style="padding:8px 14px;background:linear-gradient(135deg,var(--cyn),var(--grn));border:none;border-radius:20px;font-size:11.5px;font-weight:700;color:#000;cursor:pointer;white-space:nowrap;" onclick="openModal()">5 000 F/mois</button>
            </div>
            <div style="padding:12px 14px;display:flex;align-items:center;justify-content:space-between;">
              <div><div style="font-size:13px;font-weight:700;color:var(--vio);">EXCELLENCE</div><div style="font-size:11px;color:var(--t2);">15 concours · Coaching IA premium · Questions illimitées</div></div>
              <button style="padding:8px 14px;background:linear-gradient(135deg,var(--vio),var(--amb));border:none;border-radius:20px;font-size:11.5px;font-weight:700;color:#fff;cursor:pointer;white-space:nowrap;" onclick="openModal()">10 000 F/mois</button>
            </div>
          </div>

          <!-- Historique paiements -->
          <div class="sub-history">
            <div class="sub-hist-head">Historique des paiements</div>
            <div class="sub-hist-row">
              <div><div class="sub-hist-plan">MASTERY</div><div class="sub-hist-date">12 avril 2026</div></div>
              <div style="text-align:right"><div class="sub-hist-amount">2 500 F</div><div class="sub-hist-status paid">Payé</div></div>
            </div>
            <div class="sub-hist-row">
              <div><div class="sub-hist-plan">MASTERY</div><div class="sub-hist-date">12 mars 2026</div></div>
              <div style="text-align:right"><div class="sub-hist-amount">2 500 F</div><div class="sub-hist-status paid">Payé</div></div>
            </div>
            <div class="sub-hist-row">
              <div><div class="sub-hist-plan">MASTERY</div><div class="sub-hist-date">12 février 2026</div></div>
              <div style="text-align:right"><div class="sub-hist-amount">0 F</div><div class="sub-hist-status paid">Essai 7j</div></div>
            </div>
          </div>

          <div style="font-size:11px;color:var(--t3);text-align:center;line-height:1.6;">Paiements sécurisés via Orange Money & MTN MoMo · Résiliable à tout moment<br>Support : WhatsApp · contact@concourspro.cm</div>
        </div>
      </div>

      <!-- ════════════ ADMIN DASHBOARD ════════════ -->
      <div class="app-pane" id="ap-admin">
        <div class="pad">
          <div style="font-family:'Syne',sans-serif;font-size:20px;font-weight:800;color:var(--t1);margin-bottom:4px;">Tableau de bord Admin</div>
          <div style="font-size:12.5px;color:var(--t2);margin-bottom:16px;">Vision d'ensemble en temps réel</div>

          <!-- RT badge -->
          <div class="rt-badge"><div class="rt-dot"></div>Données en temps réel · Actualisé maintenant</div>

          <!-- KPI grid -->
          <div class="admin-grid">
            <div class="admin-stat s1">
              <div class="ast-ico"><svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>
              <span class="ast-v">1 247</span><span class="ast-k">Utilisateurs total</span>
              <div class="ast-trend up">↑ +38 cette semaine</div>
            </div>
            <div class="admin-stat s2">
              <div class="ast-ico"><svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg></div>
              <span class="ast-v">247</span><span class="ast-k">Actifs maintenant</span>
              <div class="ast-trend up">↑ pic à 18h</div>
            </div>
            <div class="admin-stat s3">
              <div class="ast-ico"><svg viewBox="0 0 24 24"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg></div>
              <span class="ast-v">18 542</span><span class="ast-k">Messages envoyés</span>
              <div class="ast-trend up">↑ +2 340 aujourd'hui</div>
            </div>
            <div class="admin-stat s4">
              <div class="ast-ico"><svg viewBox="0 0 24 24"><line x1="12" y1="1" x2="12" y2="23"/><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg></div>
              <span class="ast-v">482 k</span><span class="ast-k">Revenus (FCFA)</span>
              <div class="ast-trend up">↑ +72 000 ce mois</div>
            </div>
          </div>

          <!-- Charts -->
          <div class="admin-charts">
            <!-- Inscriptions chart -->
            <div class="chart-card">
              <div class="chart-title">Inscriptions des 7 derniers jours</div>
              <div class="chart-bars" id="adminChart">
                <!-- generated by JS -->
              </div>
              <div style="height:20px;"></div>
            </div>
            <!-- Plan distribution -->
            <div class="chart-card">
              <div class="chart-title">Répartition des forfaits</div>
              <div class="plan-dist">
                <div class="pd-row"><div class="pd-dot" style="background:var(--t3)"></div><div class="pd-name">Foundation</div><div class="pd-bar-wrap"><div class="pd-bar" style="width:52%;background:var(--t3)"></div></div><div class="pd-pct">52%</div></div>
                <div class="pd-row"><div class="pd-dot" style="background:var(--ind2)"></div><div class="pd-name">Mastery</div><div class="pd-bar-wrap"><div class="pd-bar" style="width:28%;background:var(--ind2)"></div></div><div class="pd-pct">28%</div></div>
                <div class="pd-row"><div class="pd-dot" style="background:var(--cyn)"></div><div class="pd-name">Elite</div><div class="pd-bar-wrap"><div class="pd-bar" style="width:14%;background:var(--cyn)"></div></div><div class="pd-pct">14%</div></div>
                <div class="pd-row"><div class="pd-dot" style="background:var(--vio)"></div><div class="pd-name">Excellence+</div><div class="pd-bar-wrap"><div class="pd-bar" style="width:6%;background:var(--vio)"></div></div><div class="pd-pct">6%</div></div>
              </div>
            </div>
          </div>

          <!-- Users table -->
          <div class="users-table-wrap">
            <div class="ut-head">
              <div class="ut-title">Utilisateurs (1 247)</div>
              <div class="ut-search">
                <div class="ut-search-ico"><svg viewBox="0 0 24 24"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg></div>
                <input placeholder="Rechercher un utilisateur…" oninput="filterTable(this.value)">
              </div>
            </div>
            <div class="ut-scroll">
              <table class="ut" id="usersTable">
                <thead>
                  <tr>
                    <th>Nom</th>
                    <th>Téléphone</th>
                    <th>Email</th>
                    <th>Forfait</th>
                    <th>Concours</th>
                    <th>Messages</th>
                    <th>Progression</th>
                    <th>Statut</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody id="utBody"></tbody>
              </table>
            </div>
          </div>

          <!-- Activity feed -->
          <div style="margin-bottom:16px;">
            <div class="sh"><div class="sh-l">Activité récente</div><span class="sh-r">Tout voir →</span></div>
            <div class="activity-feed">
              <div class="af-item"><div class="af-ico new">👤</div><div class="af-body"><div class="af-txt"><b>Aïcha Tabi</b> vient de s'inscrire · Plan Foundation</div><div class="af-time">Il y a 2 minutes</div></div></div>
              <div class="af-item"><div class="af-ico pay">💳</div><div class="af-body"><div class="af-txt"><b>Junior Mbarga</b> a souscrit au plan <b>MASTERY</b> · 2 000 FCFA</div><div class="af-time">Il y a 8 minutes</div></div></div>
              <div class="af-item"><div class="af-ico msg">💬</div><div class="af-body"><div class="af-txt"><b>Sandrine Eboa</b> a posé 47 questions aujourd'hui (record)</div><div class="af-time">Il y a 15 minutes</div></div></div>
              <div class="af-item"><div class="af-ico up">⬆️</div><div class="af-body"><div class="af-txt"><b>Eric Nguelle</b> a upgradé Foundation → <b>ELITE</b></div><div class="af-time">Il y a 32 minutes</div></div></div>
              <div class="af-item"><div class="af-ico pay">💳</div><div class="af-body"><div class="af-txt"><b>Mefire Fifen</b> a activé son essai MASTERY 7 jours</div><div class="af-time">Il y a 1 heure</div></div></div>
            </div>
          </div>
        </div>
      </div>

    </main>
  </div>
</div>

<!-- TIMER POPUP -->
<div class="timer-pop" id="timerPop">
  <div class="tp-h"><div class="tp-ic"><svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg></div><div><div class="tp-ttl">Pomodoro</div><div class="tp-sub">Concentration</div></div></div>
  <div class="tp-disp" id="tpDisp">25:00</div>
  <div class="tp-pre">
    <div class="tp-p on" onclick="setTPreset(this,25)">25 min</div>
    <div class="tp-p" onclick="setTPreset(this,45)">45 min</div>
    <div class="tp-p" onclick="setTPreset(this,60)">60 min</div>
  </div>
  <div class="tp-ctrl">
    <button class="tp-btn tp-go" id="tpGo" onclick="toggleTimerRun()">▶ Démarrer</button>
    <button class="tp-btn tp-rs" onclick="resetTimer()">↺ Reset</button>
  </div>
</div>

<!-- PROFILE PANEL -->
<div class="pp-ovl" id="ppOvl" onclick="closeProfile()"></div>
<div class="profile-panel" id="ppPanel">
  <div class="pp-head">
    <div class="pp-title">Paramètres</div>
    <div class="pp-close" onclick="closeProfile()"><svg viewBox="0 0 24 24"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg></div>
  </div>
  <div class="pp-body">
    <div class="pp-ucard">
      <div class="pp-uav">🎓</div>
      <div class="pp-unm">Mefire Fifen</div>
      <div class="pp-uemail">mefire@email.com</div>
      <div class="pp-uplan-badge"><div class="pp-uplan-dot"></div>Plan MASTERY · 5j restants</div>
      <button class="pp-edit"><svg viewBox="0 0 24 24"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"/></svg>Modifier le profil</button>
    </div>
    <div class="pp-sec">Apparence</div>
    <div class="pp-toggle">
      <div class="pp-tgl-left"><div class="pp-tgl-ico"><svg viewBox="0 0 24 24"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg></div><div><div class="pp-tgl-lbl">Mode sombre</div><div class="pp-tgl-sub">Activer le thème nuit</div></div></div>
      <div class="pp-switch" id="themeSwitch" onclick="toggleTheme()"></div>
    </div>
    <div class="pp-toggle">
      <div class="pp-tgl-left"><div class="pp-tgl-ico"><svg viewBox="0 0 24 24"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg></div><div><div class="pp-tgl-lbl">Musique focus</div><div class="pp-tgl-sub">Lo-fi par défaut</div></div></div>
      <div class="pp-switch" id="musicSwitch" onclick="toggleSwitch('musicSwitch')"></div>
    </div>
    <div class="pp-sec">Notifications</div>
    <div class="pp-toggle">
      <div class="pp-tgl-left"><div class="pp-tgl-ico"><svg viewBox="0 0 24 24"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"/><path d="M13.73 21a2 2 0 0 1-3.46 0"/></svg></div><div><div class="pp-tgl-lbl">Rappels de révision</div><div class="pp-tgl-sub">Quotidiens</div></div></div>
      <div class="pp-switch on" id="notifSwitch" onclick="toggleSwitch('notifSwitch')"></div>
    </div>
    <div class="pp-toggle">
      <div class="pp-tgl-left"><div class="pp-tgl-ico"><svg viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></div><div><div class="pp-tgl-lbl">Alertes résultats</div><div class="pp-tgl-sub">Concours en temps réel</div></div></div>
      <div class="pp-switch" id="alertSwitch" onclick="toggleSwitch('alertSwitch')"></div>
    </div>
    <div class="pp-sec">Mon compte</div>
    <div class="pp-item" onclick="openModal()"><div class="pp-item-ico"><svg viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg></div><div style="flex:1"><div class="pp-item-lbl">Mon abonnement</div><div style="font-size:10.5px;color:var(--t3)">MASTERY · 5 jours restants</div></div><div class="pp-arrow">›</div></div>
    <div class="pp-item"><div class="pp-item-ico"><svg viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg></div><div style="flex:1"><div class="pp-item-lbl">Changer le mot de passe</div></div><div class="pp-arrow">›</div></div>
    <div class="pp-sec">Aide</div>
    <div class="pp-item"><div class="pp-item-ico"><svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg></div><div style="flex:1"><div class="pp-item-lbl">Centre d'aide</div></div><div class="pp-arrow">›</div></div>
    <div class="pp-item"><div class="pp-item-ico"><svg viewBox="0 0 24 24"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg></div><div style="flex:1"><div class="pp-item-lbl">Contacter le support</div><div style="font-size:10.5px;color:var(--t3)">WhatsApp · Email</div></div><div class="pp-arrow">›</div></div>
    <div class="pp-sec" style="margin-top:16px;">Zone sensible</div>
    <div class="pp-danger"><div class="pp-danger-lbl">Se déconnecter</div><div class="pp-danger-sub">Ferme ta session</div></div>
    <div class="pp-danger"><div class="pp-danger-lbl">Supprimer mon compte</div><div class="pp-danger-sub">Action irréversible</div></div>
    <div class="pp-ver">Prépas Concours AI v1.0.0 · 2026</div>
  </div>
</div>

<!-- UPGRADE MODAL -->
<div class="ovl" id="modalOvl" onclick="maybeCloseModal(event)">
  <div class="mod">
    <div class="mod-hd">
      <div class="mod-badge">✦ PRÉPAS CONCOURS AI</div>
      <div class="mod-title">Choisissez votre niveau</div>
      <div class="mod-tag">"Une intelligence d'entraînement pour les concours."</div>
      <div class="mod-sub">Chaque niveau est une vraie étape de transformation.<br><b>7 jours d'essai MASTERY offerts</b> · Aucune carte requise.</div>
    </div>
    <div class="plans-wrap">
      <!-- ═══════ FOUNDATION ═══════ -->
      <div class="plan f0">
        <div class="pl-top">
          <div class="pl-plan-ico"><svg viewBox="0 0 24 24"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"/><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"/></svg></div>
          <div><div class="pl-name">FONDATION</div><div class="pl-ai-tag">IA Basic · Découverte</div></div>
          <div class="pl-price">0 F<small>GRATUIT</small></div>
        </div>
        <div class="pl-promise">"Je teste avant de m'engager."</div>
        <div class="pl-div"></div>
        <div class="pl-feats">
          <div class="pf"><div class="pf-ic">✓</div><div><b>1 seul concours</b> au choix</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>15 questions par jour</b> maximum</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Accès limité au contenu</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Planning très basique</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Citations · Musique focus</div></div>
        </div>
        <div class="pl-teaser">→ Idéal pour <b>découvrir la plateforme</b> avant de passer au sérieux.</div>
        <button class="pl-cta" onclick="closeModal()">Continuer en Fondation</button>
      </div>

      <!-- ═══════ MASTERY ═══════ -->
      <div class="plan p1">
        <div class="pop-tag">⭐ POPULAIRE</div>
        <div class="pl-top">
          <div class="pl-plan-ico"><svg viewBox="0 0 24 24"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg></div>
          <div><div class="pl-name">MASTERY</div><div class="pl-ai-tag">IA Standard · Raisonnement structuré</div></div>
          <div class="pl-price">2 500 F<small>/MOIS</small></div>
        </div>
        <div class="trial-badge">🎁 7 jours d'essai gratuit · Sans carte</div>
        <div class="pl-promise">"Je commence ma vraie préparation."</div>
        <div class="pl-div"></div>
        <div class="pl-feats">
          <div class="pf"><div class="pf-ic">✓</div><div><b>Jusqu'à 5 concours</b> en simultané</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Planning hebdomadaire</b> simple et clair</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Matières du jour · Notions principales</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Exercices d'application</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Petites évaluations quotidiennes</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Concours blanc chaque dimanche</b></div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Correction classique des réponses</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Photos 📷 + Audio 🎤 · Pomodoro</div></div>
        </div>
        <div class="pl-teaser">→ <b>Analyse avancée des erreurs + classement</b> dans Élite.</div>
        <button class="pl-cta" onclick="alert('MASTERY — 7 jours gratuits activés !')">Démarrer 7j gratuit →</button>
      </div>

      <!-- ═══════ ELITE ═══════ -->
      <div class="plan p2">
        <div class="pl-top">
          <div class="pl-plan-ico"><svg viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg></div>
          <div><div class="pl-name">ÉLITE</div><div class="pl-ai-tag">IA Avancée · Raisonnement avancé</div></div>
          <div class="pl-price">5 000 F<small>/MOIS</small></div>
        </div>
        <div class="pl-promise">"Je veux un vrai suivi et battre les autres."</div>
        <div class="pl-div"></div>
        <div class="pl-feats">
          <div class="pf"><div class="pf-ic">✓</div><div><b>Tout MASTERY inclus</b></div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Jusqu'à 10 concours</b> en simultané</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Planning détaillé</b> avec objectifs journaliers</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Exercices ciblés selon ton niveau</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Analyse des erreurs</b> après chaque évaluation</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Corrections détaillées · Recommandations</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Classement</b> 🏆 après les concours blancs</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Suivi de progression par matière</div></div>
        </div>
        <div class="pl-teaser">→ <b>Coaching IA premium + adaptation auto</b> dans Excellence.</div>
        <button class="pl-cta" onclick="alert('ÉLITE sélectionné — 5 000 FCFA/mois')">Passer Élite — 5 000 F/mois</button>
      </div>

      <!-- ═══════ EXCELLENCE ═══════ -->
      <div class="plan p3">
        <div class="pl-top">
          <div class="pl-plan-ico"><svg viewBox="0 0 24 24"><path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6"/><path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18"/><path d="M4 22h16"/><path d="M10 14.66V17c0 .55-.47.98-.97 1.21C7.85 18.75 7 20.24 7 22"/><path d="M14 14.66V17c0 .55.47.98.97 1.21C16.15 18.75 17 20.24 17 22"/><path d="M18 2H6v7a6 6 0 0 0 12 0V2z"/></svg></div>
          <div><div class="pl-name">EXCELLENCE</div><div class="pl-ai-tag">IA Expert · Niveau correcteur national</div></div>
          <div class="pl-price">10 000 F<small>/MOIS</small></div>
        </div>
        <div class="pl-promise">"Je veux maximiser chacune de mes chances."</div>
        <div class="pl-div"></div>
        <div class="pl-feats">
          <div class="pf"><div class="pf-ic">✓</div><div><b>Tout ÉLITE inclus</b></div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Accès à 15 concours</b> · tous disponibles</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Questions illimitées</b> à l'IA</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Planning ultra-personnalisé</b> J/J</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Exercices générés</b> selon tes faiblesses</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Adaptation automatique</b> selon tes résultats</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>Rapports de performance complets</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div><b>Coaching IA premium</b> · Stratégie personnalisée</div></div>
          <div class="pf"><div class="pf-ic">✓</div><div>WhatsApp 24/7 · Alertes résultats 🔔</div></div>
        </div>
        <button class="pl-cta" onclick="alert('EXCELLENCE sélectionné — 10 000 FCFA/mois')">Passer Excellence — 10 000 F/mois</button>
      </div>
    </div>
    <div class="mod-ft">Orange Money & MTN MoMo · SSL · Résiliable à tout moment<br><button class="mod-close-btn" onclick="closeModal()">✕ Fermer</button></div>
  </div>
</div>

<script>
/* ══ LOGO ══ */
function injectLogo(id){const e=document.getElementById(id);if(e)e.innerHTML=document.getElementById('logoTpl').innerHTML;}
injectLogo('lm1');injectLogo('lm2');injectLogo('lm3');

/* ══ VIEWS ══ */
function show(id){document.querySelectorAll('.view').forEach(v=>v.classList.remove('active'));document.getElementById(id)?.classList.add('active');}
function showLanding(){show('landing');}
function showAuth(t='login'){show('auth');setAuthTab(t);}
function showCS(){show('cs-view');}
function showWiz(){show('wiz-view');initWiz();}
function enterApp(){show('app');}
function setAuthTab(t){
  ['login','register'].forEach(k=>{
    document.getElementById('at-'+k)?.classList.toggle('on',k===t);
    const f=document.getElementById('af-'+k);if(f)f.style.display=k===t?'':'none';
  });
}

/* ══ CONCOURS PICKER ══ */
function pickCS(el){
  document.querySelectorAll('.csc').forEach(c=>c.classList.remove('sel'));
  el.classList.add('sel');
  const btn=document.getElementById('csCta');
  btn.disabled=false;
}

/* ══ WIZARD ══ */
const wizSteps=[
  {q:'Date de ton concours ?',hint:'Permet de calculer ton planning exact.',type:'input',ph:'Ex : 15 Juillet 2026'},
  {q:'Heures disponibles par jour ?',hint:'Sois réaliste pour un planning efficace.',type:'opts',opts:['1–2 heures','2–4 heures','4–6 heures','6h et plus']},
  {q:'Jours disponibles ?',hint:'Évite les jours où tu es indisponible.',type:'opts',opts:['Tous les jours','Lun–Ven','Week-ends','Variable']},
  {q:'Ton niveau actuel ?',hint:'L\'IA adapte la difficulté en conséquence.',type:'opts',opts:['Débutant','Intermédiaire','Avancé','Expert']},
  {q:'Ta plus grande difficulté ?',hint:'Le Coach adapte ses conseils dès le 1er jour.',type:'opts',opts:['Manque de méthode','Mémorisation','Gestion du temps','Stress & motivation']},
];
let wizIdx=0,wizAns=[];
function initWiz(){wizIdx=0;wizAns=[];renderWiz();}
function renderWiz(){
  const s=wizSteps[wizIdx];
  const prog=document.getElementById('wizProg');
  prog.querySelectorAll('.ws-dot').forEach((d,i)=>{d.classList.remove('done','act');if(i<wizIdx){d.classList.add('done');d.textContent='✓';}else{if(i===wizIdx)d.classList.add('act');d.textContent=i+1;}});
  prog.querySelectorAll('.ws-line').forEach((l,i)=>l.classList.toggle('done',i<wizIdx));
  let h=`<div class="wiz-q">${s.q}</div><div class="wiz-hint">${s.hint}</div>`;
  if(s.type==='input'){h+=`<input class="wiz-inp" id="wizInp" placeholder="${s.ph}" value="${wizAns[wizIdx]||''}">`;}
  else{h+=`<div class="wiz-opts">`;s.opts.forEach((o,i)=>h+=`<div class="wo${wizAns[wizIdx]===i?' sel':''}" onclick="selectWO(this,${i})">${o}</div>`);h+=`</div>`;}
  document.getElementById('wizContent').innerHTML=h;
  document.getElementById('wizPrevBtn').style.display=wizIdx===0?'none':'';
  document.getElementById('wizNextBtn').textContent=wizIdx===wizSteps.length-1?'✓ Créer mon planning':'Suivant →';
}
function selectWO(el,i){el.closest('.wiz-opts').querySelectorAll('.wo').forEach(o=>o.classList.remove('sel'));el.classList.add('sel');wizAns[wizIdx]=i;}
function wizNext(){if(wizSteps[wizIdx].type==='input'){const v=document.getElementById('wizInp')?.value.trim();wizAns[wizIdx]=v||'';}if(wizIdx<wizSteps.length-1){wizIdx++;renderWiz();}else enterApp();}
function wizPrev(){if(wizIdx>0){wizIdx--;renderWiz();}}

/* ══ ICON MAPS for topbar ══ */
const pageIcons={
  home:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>',
  chat:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2a10 10 0 0 1 10 10c0 5.52-4.48 10-10 10H2v-10C2 6.48 6.48 2 12 2z"/></svg>',
  coach:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/></svg>',
  concours:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/></svg>',
  planning:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="3" y1="10" x2="21" y2="10"/></svg>',
  projects:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>',
  contest:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>',
  exams:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="8" y1="14" x2="16" y2="14"/></svg>',
  leaderboard:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6"/><path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18"/><path d="M18 2H6v7a6 6 0 0 0 12 0V2z"/></svg>',
  stats:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="20" x2="18" y2="10"/><line x1="12" y1="20" x2="12" y2="4"/><line x1="6" y1="20" x2="6" y2="14"/></svg>',
  subscription:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"/><line x1="1" y1="10" x2="23" y2="10"/></svg>',
  admin:'<svg viewBox="0 0 24 24" width="17" height="17" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>'
};
const pageNames={home:'Accueil',chat:'Professeur IA',coach:'Coach Méthodes',concours:'Épreuves',planning:'Planning',projects:'Projets',contest:'Mode Concours',exams:'Examens Blancs',leaderboard:'Classement',stats:'Statistiques',subscription:'Mon Abonnement',admin:'Admin Dashboard'};

/* ══ APP NAV ══ */
function goApp(tab,sbEl){
  document.querySelectorAll('.app-pane,.app-pane-chat').forEach(p=>{p.classList.remove('on');p.style.display='none';});
  const el=document.getElementById('ap-'+tab);
  if(!el)return;
  if(el.classList.contains('app-pane-chat')){el.style.display='flex';el.style.flexDirection='column';el.style.height='100%';}
  else el.style.display='block';
  el.classList.add('on');
  document.querySelectorAll('.sbi').forEach(n=>n.classList.remove('on'));
  if(sbEl)sbEl.classList.add('on');
  const ico=pageIcons[tab]||'';
  const nm=pageNames[tab]||'—';
  ['mobIco','deskIco'].forEach(id=>{const e=document.getElementById(id);if(e)e.innerHTML=ico;});
  ['mobTitle','deskTitle'].forEach(id=>{const e=document.getElementById(id);if(e)e.textContent=nm;});
  closeSB();
}

/* ══ SIDEBAR MOBILE ══ */
function openSB(){document.getElementById('sidebar').classList.add('open');document.getElementById('sbOverlay').classList.add('show');}
function closeSB(){document.getElementById('sidebar').classList.remove('open');document.getElementById('sbOverlay').classList.remove('show');}

/* ══ THEME — Light par défaut ══ */
let dark=false;
function toggleTheme(){
  dark=!dark;
  document.body.dataset.theme=dark?'dark':'';
  /* Met à jour le meta theme-color pour la barre du navigateur mobile */
  const mt=document.querySelector('meta[name="theme-color"]');
  if(mt)mt.setAttribute('content',dark?'#040812':'#F5F6FA');
  const themeBtn=document.getElementById('themeBtn');
  const sw=document.getElementById('themeSwitch');
  if(themeBtn){
    themeBtn.innerHTML=dark
      ?'<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="var(--amb)" stroke-width="1.8" stroke-linecap="round"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>'
      :'<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="var(--ind)" stroke-width="1.8" stroke-linecap="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg>';
  }
  if(sw)sw.classList.toggle('on',dark);
}
function toggleSwitch(id){document.getElementById(id)?.classList.toggle('on');}

/* ══ MUSIC ══ */
let playing=false;
function toggleMusic(){
  playing=!playing;
  const disc=document.getElementById('mcDisc'),btn=document.getElementById('mcBtn'),sub=document.getElementById('mcS');
  [1,2,3,4,5].forEach(i=>{const w=document.getElementById('wb'+i);if(w)playing?w.classList.add('a'):w.classList.remove('a');});
  disc?.classList.toggle('spin',playing);
  if(btn)btn.textContent=playing?'⏸':'▶';
  if(sub)sub.textContent=playing?'En lecture · Lo-fi Focus':'En pause';
}

/* ══ QUOTES ══ */
const quotes=[
  {t:'"Plus qu\'une app de révision. Une intelligence d\'entraînement pour les concours."',a:'Prépas Concours AI'},
  {t:'"Le succès, c\'est aller d\'échec en échec sans perdre son enthousiasme."',a:'Winston Churchill'},
  {t:'"L\'éducation est l\'arme la plus puissante pour changer le monde."',a:'Nelson Mandela'},
  {t:'"La réussite appartient à ceux qui ne lâchent jamais."',a:'Proverbe Africain'},
  {t:'"Chaque expert a un jour été débutant."',a:'Helen Hayes'},
];
let qi=0;
function newQuote(){qi=(qi+1)%quotes.length;const qt=document.getElementById('qTxt'),qb=document.getElementById('qBy');if(qt)qt.textContent=quotes[qi].t;if(qb)qb.textContent=quotes[qi].a;}

/* ══ CHAT — 2-5s réponse ══ */
function askSugg(el){const inp=document.getElementById('chatTA');if(inp){inp.value=el.textContent.trim();sendMsg();}}
function autoResize(t){t.style.height='auto';t.style.height=Math.min(t.scrollHeight,100)+'px';}
function handleChatKey(e){if(e.key==='Enter'&&!e.shiftKey){e.preventDefault();sendMsg();}}
let micActive=false;
function toggleMic(){micActive=!micActive;document.getElementById('micBtn')?.classList.toggle('rec',micActive);}
function handleFile(input){if(input.files[0]){const ta=document.getElementById('chatTA');if(ta){ta.value=`[Fichier : ${input.files[0].name}] Analyse ce document.`;ta.focus();}}}

const simpleKeywords=['date','nom','qui','quoi','quand','où','définition','c\'est quoi'];
function isSimpleQuery(val){return simpleKeywords.some(k=>val.toLowerCase().includes(k));}

function sendMsg(){
  const inp=document.getElementById('chatTA');
  if(!inp)return;
  const val=inp.value.trim();if(!val)return;
  inp.value='';inp.style.height='auto';
  const empty=document.getElementById('chatEmpty'),area=document.getElementById('msgsArea');
  if(empty)empty.style.display='none';
  if(!area)return;
  area.classList.add('on');
  area.innerHTML+=`<div class="mr user"><div class="mav usr">M</div><div class="mbub">${val}</div></div>`;
  const tid='tk'+Date.now();
  area.innerHTML+=`
    <div class="think-row" id="${tid}">
      <div class="mav bot">
        <svg class="think-spin" viewBox="0 0 100 100" width="20" height="20">
          <circle cx="50" cy="50" r="44" fill="none" stroke="url(#G1)" stroke-width="3.5" stroke-dasharray="55 30" opacity=".9"/>
        </svg>
      </div>
      <div class="think-bub">
        <svg class="think-spin" viewBox="0 0 100 100" width="18" height="18">
          <circle cx="50" cy="50" r="44" fill="none" stroke="url(#G1)" stroke-width="3" stroke-dasharray="55 30"/>
          <circle cx="50" cy="50" r="30" fill="none" stroke="url(#G2)" stroke-width="2" stroke-dasharray="35 20" opacity=".7"/>
        </svg>
        <span class="think-lbl">Réflexion…</span>
        <div class="tdots"><span></span><span></span><span></span></div>
      </div>
    </div>`;
  area.scrollTop=area.scrollHeight;
  /* 2–3s tâches simples, 3–5s tâches complexes */
  const isSimple=isSimpleQuery(val);
  const delay=isSimple?(2000+Math.random()*1000):(3000+Math.random()*2000);
  const rs=["Tu fais cette erreur parce que tu sautes l'étape clé du raisonnement. Voici l'astuce des correcteurs ENAM… 📖","D'après tes 8 dernières sessions, tu perds des points sur l'application des concepts. Voici la méthode des lauréats. ✅","Bonne question ! Voici la correction étape par étape selon le programme officiel camerounais. 🎯","J'ai analysé toutes les épreuves ENAM 2015–2024. Ce type revient dans 67% des concours. 💡"];
  setTimeout(()=>{
    const el=document.getElementById(tid);if(el)el.remove();
    const r=rs[Math.floor(Math.random()*rs.length)];
    area.innerHTML+=`
      <div class="mr bot">
        <div class="mav bot">
          <svg viewBox="0 0 100 100" width="20" height="20">
            <circle cx="50" cy="50" r="44" fill="none" stroke="url(#G1)" stroke-width="3" stroke-dasharray="55 30" opacity=".9"/>
            <text x="50" y="57" text-anchor="middle" font-size="28" font-weight="900" fill="url(#G1)" font-family="Syne,sans-serif">P</text>
          </svg>
        </div>
        <div class="mbub">${r}</div>
      </div>`;
    area.scrollTop=area.scrollHeight;
  },delay);
}

/* ══ MODAL ══ */
function openModal(){document.getElementById('modalOvl').classList.add('on');document.body.style.overflow='hidden';}
function closeModal(){document.getElementById('modalOvl').classList.remove('on');document.body.style.overflow='';}
function maybeCloseModal(e){if(e.target===document.getElementById('modalOvl'))closeModal();}

/* ══ PROFILE ══ */
function openProfile(){document.getElementById('ppPanel').classList.add('open');document.getElementById('ppOvl').classList.add('show');closeSB();}
function closeProfile(){document.getElementById('ppPanel').classList.remove('open');document.getElementById('ppOvl').classList.remove('show');}

/* ══ TIMER ══ */
let tSec=25*60,tInt=null,tRun=false,tPre=25;
function fmt(s){return String(Math.floor(s/60)).padStart(2,'0')+':'+String(s%60).padStart(2,'0');}
function updTimer(){const v=fmt(tSec);['tpDisp','timerM','timerD'].forEach(id=>{const e=document.getElementById(id);if(e)e.textContent=v;});}
function setTPreset(el,m){document.querySelectorAll('.tp-p').forEach(p=>p.classList.remove('on'));el.classList.add('on');tPre=m;tSec=m*60;updTimer();if(tRun)toggleTimerRun();}
function toggleTimerRun(){
  tRun=!tRun;
  const btn=document.getElementById('tpGo');
  const mob=document.getElementById('mobTimer');
  const dsk=document.getElementById('deskTimer');
  if(tRun){
    if(btn)btn.textContent='⏸ Pause';
    mob?.classList.add('run');dsk?.classList.add('run');
    tInt=setInterval(()=>{
      if(tSec>0){tSec--;updTimer();}
      else{clearInterval(tInt);tRun=false;if(btn)btn.textContent='▶ Démarrer';mob?.classList.remove('run');dsk?.classList.remove('run');alert('⏱️ Temps écoulé ! Bravo !');}
    },1000);
  }else{if(btn)btn.textContent='▶ Démarrer';mob?.classList.remove('run');dsk?.classList.remove('run');clearInterval(tInt);}
}
function resetTimer(){tSec=tPre*60;updTimer();if(tRun)toggleTimerRun();}
function toggleTimerPop(){document.getElementById('timerPop').classList.toggle('on');}

/* ══ PWA ══ */
let dPP=null;
window.addEventListener('beforeinstallprompt',e=>{e.preventDefault();dPP=e;});
function installPWA(){
  if(dPP){dPP.prompt();dPP.userChoice.then(()=>{dPP=null;document.getElementById('pwaBanner').style.display='none';});}
  else alert('📱 iPhone : Safari → Partager → Sur l\'écran d\'accueil\n🤖 Android : Menu ⋮ → Ajouter à l\'écran d\'accueil');
}

/* ══ ADMIN CHART ══ */
function renderAdminChart(){
  const wrap=document.getElementById('adminChart');
  if(!wrap)return;
  const data=[38,45,52,41,67,73,58];
  const days=['L','M','M','J','V','S','D'];
  const max=Math.max(...data);
  const colors=['var(--ind)','var(--ind)','var(--ind)','var(--ind)','var(--cyn)','var(--vio)','var(--ind)'];
  wrap.innerHTML='';
  data.forEach((v,i)=>{
    const h=Math.round((v/max)*70);
    const bar=document.createElement('div');
    bar.className='cb';
    bar.style.cssText=`height:${h}px;background:${colors[i]};opacity:${i===4||i===5?1:.7};`;
    bar.title=`${days[i]}: ${v} inscriptions`;
    const lbl=document.createElement('div');
    lbl.className='cb-label';
    lbl.textContent=days[i];
    bar.appendChild(lbl);
    wrap.appendChild(bar);
  });
}

/* ══ USERS TABLE ══ */
const usersData=[
  {nom:'Aïcha Tabi',tel:'+237 677 123 456',email:'aicha@email.cm',forfait:'mastery',concours:'ENAM',messages:342,progress:78,online:true},
  {nom:'Junior Mbarga',tel:'+237 699 234 567',email:'junior@email.cm',forfait:'elite',concours:'FMSB',messages:287,progress:65,online:true},
  {nom:'Sandrine Eboa',tel:'+237 655 345 678',email:'sandrine@email.cm',forfait:'elite',concours:'ENS',messages:198,progress:54,online:false},
  {nom:'Eric Nguelle',tel:'+237 677 456 789',email:'eric@email.cm',forfait:'excellence',concours:'ENSP',messages:412,progress:88,online:true},
  {nom:'Estelle Mballa',tel:'+237 699 567 890',email:'estelle@email.cm',forfait:'mastery',concours:'ESSEC',messages:156,progress:42,online:false},
  {nom:'Mefire Fifen',tel:'+237 677 678 901',email:'mefire@email.cm',forfait:'mastery',concours:'ENAM',messages:247,progress:67,online:true},
  {nom:'Paul Nkomo',tel:'+237 655 789 012',email:'paul@email.cm',forfait:'foundation',concours:'IUT',messages:43,progress:22,online:false},
  {nom:'Marie Ateba',tel:'+237 699 890 123',email:'marie@email.cm',forfait:'elite',concours:'ENAM',messages:318,progress:72,online:true},
];
function renderUsersTable(data=usersData){
  const tb=document.getElementById('utBody');
  if(!tb)return;
  tb.innerHTML=data.map(u=>`
    <tr>
      <td><span class="ut-name">${u.nom}</span></td>
      <td>${u.tel}</td>
      <td>${u.email}</td>
      <td><span class="ut-plan-badge ${u.forfait}">${u.forfait.charAt(0).toUpperCase()+u.forfait.slice(1)}</span></td>
      <td>${u.concours}</td>
      <td style="font-family:'DM Sans',monospace;font-size:12.5px;color:var(--cyn)">${u.messages}</td>
      <td><div class="ut-progress-bar"><div class="ut-progress-fill" style="width:${u.progress}%"></div></div> <span style="font-size:11px;color:var(--t2);margin-left:4px">${u.progress}%</span></td>
      <td><span class="ut-status ${u.online?'online':'offline'}"><div class="ut-sdot"></div>${u.online?'En ligne':'Hors ligne'}</span></td>
      <td><div class="ut-actions"><button class="ut-act-btn view">Voir</button><button class="ut-act-btn msg">Message</button></div></td>
    </tr>
  `).join('');
}
function filterTable(v){
  const filtered=usersData.filter(u=>u.nom.toLowerCase().includes(v.toLowerCase())||u.email.toLowerCase().includes(v.toLowerCase())||u.tel.includes(v));
  renderUsersTable(filtered);
}

/* ══ PLANNING TABS ══ */
function setPlTab(el,id){
  document.querySelectorAll('.plan-tab').forEach(t=>t.classList.remove('on'));
  el.classList.add('on');
  ['ptd','ptw','ptp'].forEach(k=>{const e=document.getElementById(k);if(e)e.style.display=k===id?'':'none';});
}

/* ══ LEADERBOARD TABS ══ */
const lbData={
  ENAM:[{pos:1,cls:'g2',init:'AT',name:'Aïcha Tabi',plan:'EXCELLENCE',pc:'exc',score:'18.5/20',ev:'+1.5',up:true},
        {pos:2,cls:'s2',init:'JM',name:'Junior Mbarga',plan:'ÉLITE',pc:'eli',score:'17.0/20',ev:'+0.5',up:true},
        {pos:3,cls:'b2',init:'SE',name:'Sandrine Eboa',plan:'ÉLITE',pc:'eli',score:'16.5/20',ev:'-0.5',up:false},
        {pos:4,cls:'d2',init:'EN',name:'Eric Nguelle',plan:'MASTERY',pc:'mas',score:'15.5/20',ev:'+2.0',up:true},
        {pos:23,cls:'d2',init:'MF',name:'Mefire Fifen',plan:'MASTERY',pc:'mas',score:'14.5/20',ev:'+2.0',up:true,me:true}],
  FMSB:[{pos:1,cls:'g2',init:'KN',name:'Kevin Nkomo',plan:'EXCELLENCE',pc:'exc',score:'17.5/20',ev:'+0.5',up:true},
        {pos:2,cls:'s2',init:'AB',name:'Anne Bilong',plan:'ÉLITE',pc:'eli',score:'16.0/20',ev:'+1.0',up:true},
        {pos:15,cls:'d2',init:'MF',name:'Mefire Fifen',plan:'MASTERY',pc:'mas',score:'12.0/20',ev:'+1.5',up:true,me:true}],
  ENS:[{pos:1,cls:'g2',init:'RC',name:'Rachel Chimi',plan:'EXCELLENCE',pc:'exc',score:'19.0/20',ev:'+2.0',up:true},
       {pos:23,cls:'d2',init:'MF',name:'Mefire Fifen',plan:'MASTERY',pc:'mas',score:'14.5/20',ev:'+2.0',up:true,me:true}]
};
const lbMeta={ENAM:{total:'1 240',avg:'12.4',myrank:'#23'},FMSB:{total:'890',avg:'11.8',myrank:'#15'},ENS:{total:'570',avg:'13.1',myrank:'#23'},ENSP:{total:'720',avg:'11.5',myrank:'#42'},ESSEC:{total:'410',avg:'10.9',myrank:'#47'},IUT:{total:'380',avg:'12.0',myrank:'#31'}};
function setLbTab(el,key){
  document.querySelectorAll('.lb-tab').forEach(t=>t.classList.remove('on'));
  el.classList.add('on');
  const meta=lbMeta[key]||lbMeta.ENAM;
  document.getElementById('lb-total').textContent=meta.total;
  document.getElementById('lb-avg').textContent=meta.avg;
  document.getElementById('lb-myrank').textContent=meta.myrank;
  const body=document.getElementById('lbTableBody');
  if(!body)return;
  const data=lbData[key]||lbData.ENAM;
  const planColors={exc:'background:var(--vio-g);color:var(--vio)',eli:'background:var(--cyn-g);color:var(--cyn)',mas:'background:var(--ind-g);color:var(--ind)'};
  body.innerHTML=data.map(u=>`
    <div class="lb-row2${u.me?' me2':''}">
      <div class="lb-pos2 ${u.cls}">${u.pos}</div>
      <div class="lb-player">
        <div class="lb-av2" style="${u.me?'background:linear-gradient(135deg,var(--ind),var(--cyn));':''}">${u.init}</div>
        <div><div class="lb-pnm">${u.name}${u.me?' <span style="font-size:10px;color:var(--cyn);">(Toi)</span>':''}</div><div class="lb-plan-tag" style="${planColors[u.pc]||''}">${u.plan}</div></div>
      </div>
      <div class="lb-score2">${u.score}</div>
      <div class="lb-progress2 ${u.up?'up':'down'}">${u.up?'▲':'▼'} ${u.ev}</div>
    </div>`).join('');
}

/* ══ COUNTDOWN EXAMEN BLANC ══ */
function updateCountdown(){
  const now=new Date();
  const next=new Date(now);
  next.setDate(now.getDate()+(7-now.getDay())%7||7);
  next.setHours(13,0,0,0);
  const diff=next-now;
  if(diff<=0)return;
  const d=Math.floor(diff/86400000),h=Math.floor((diff%86400000)/3600000);
  const m=Math.floor((diff%3600000)/60000),s=Math.floor((diff%60000)/1000);
  const pad=v=>String(v).padStart(2,'0');
  ['cd-d','cd-h','cd-m','cd-s'].forEach((id,i)=>{const e=document.getElementById(id);if(e)e.textContent=pad([d,h,m,s][i]);});
}
setInterval(updateCountdown,1000);
updateCountdown();

/* ══ INIT ══ */
document.querySelectorAll('.app-pane,.app-pane-chat').forEach(p=>{if(!p.classList.contains('on'))p.style.display='none';});
document.getElementById('ap-home').style.display='block';
document.getElementById('ap-chat').style.cssText='display:none;flex-direction:column;height:100%;';
document.getElementById('ap-coach').style.cssText='display:none;flex-direction:column;height:100%;';
renderAdminChart();
renderUsersTable();
</script>
</body>
</html>

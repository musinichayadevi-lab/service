<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BloodConnect - Notifications</title>

<link rel="stylesheet" href="notifications.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
  *{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f5f6f8;
}

.container{
    display:flex;
    min-height:100vh;
}

/* SIDEBAR */

.sidebar{
    width:230px;
    background:#13152f;
    color:white;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.logo{
    display:flex;
    align-items:center;
    gap:12px;
    padding:25px 18px;
    border-bottom:1px solid rgba(255,255,255,.08);
}

.logo-icon{
    width:40px;
    height:40px;
    border-radius:12px;
    background:#e14c38;
    display:flex;
    align-items:center;
    justify-content:center;
}

.logo h3{
    font-size:22px;
}

.logo span{
    font-size:12px;
    color:#b8bbcb;
}

.menu{
    padding:18px 10px;
}

.menu h5{
    color:#7d8096;
    font-size:11px;
    margin:18px 10px;
}

.menu a{
    display:flex;
    align-items:center;
    gap:12px;
    text-decoration:none;
    color:#e8e8ef;
    padding:12px 14px;
    border-radius:10px;
    margin-bottom:4px;
}

.menu a:hover{
    background:#20244d;
}

.active{
    background:#dc4c36;
}

.count{
    margin-left:auto;
    font-size:12px;
    font-weight:600;
}

.bottom-section{
    padding:15px;
    border-top:1px solid rgba(255,255,255,.08);
}

.user-box{
    background:#20233f;
    padding:12px;
    border-radius:10px;
    display:flex;
    gap:12px;
    align-items:center;
}

.avatar{
    width:38px;
    height:38px;
    border-radius:50%;
    background:#dc4c36;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:600;
}

.user-box p{
    color:#b8bbcb;
    font-size:13px;
}

.logout{
    display:flex;
    align-items:center;
    gap:10px;
    color:#ff8879;
    text-decoration:none;
    margin-top:18px;
}

/* MAIN */

.main-content{
    flex:1;
}

.topbar{
    height:62px;
    background:white;
    border-bottom:1px solid #e5e7eb;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 25px;
}

.topbar h2{
    font-size:20px;
}

.top-icons{
    display:flex;
    align-items:center;
    gap:15px;
}

.bell-icon{
    position:relative;
    background:#f2f3f5;
    width:38px;
    height:38px;
    border-radius:12px;
    display:flex;
    align-items:center;
    justify-content:center;
}

.bell-icon span{
    position:absolute;
    top:-5px;
    right:-5px;
    width:18px;
    height:18px;
    border-radius:50%;
    background:#dc4c36;
    color:white;
    font-size:11px;
    display:flex;
    align-items:center;
    justify-content:center;
}

.profile-circle{
    width:38px;
    height:38px;
    border-radius:50%;
    background:#dc4c36;
    color:white;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:600;
}

/* HEADER */

.page-header{
    padding:30px 25px 20px;
}

.page-header h1{
    font-size:42px;
    color:#232738;
}

.page-header p{
    margin-top:8px;
    color:#6b7280;
}

/* CARD */

.notification-card{
    background:white;
    margin:0 25px 25px;
    border-radius:16px;
    border:1px solid #e5e7eb;
    padding:20px;
}

.card-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:15px;
}

.card-header h3{
    color:#232738;
}

.card-header button{
    border:none;
    background:none;
    color:#6b7280;
    cursor:pointer;
}

/* ITEM */

.notification-item{
    display:flex;
    align-items:flex-start;
    gap:15px;
    padding:22px 0;
    border-bottom:1px solid #edf0f2;
}

.notification-item.last{
    border-bottom:none;
}

.icon{
    width:36px;
    height:36px;
    border-radius:10px;
    display:flex;
    align-items:center;
    justify-content:center;
    flex-shrink:0;
}

.danger{
    background:#fff0ee;
    color:#e14c38;
}

.success{
    background:#eaf8ef;
    color:#28a745;
}

.primary{
    background:#eaf4ff;
    color:#0d6efd;
}

.content{
    flex:1;
}

.content h4{
    color:#232738;
    margin-bottom:5px;
}

.content p{
    color:#6b7280;
    margin-bottom:8px;
}

.content span{
    color:#9ca3af;
    font-size:13px;
}

.dot{
    width:8px;
    height:8px;
    border-radius:50%;
    background:#dc4c36;
    margin-top:8px;
}
</style>
</head>

<body>

<div class="container">

    <!-- SIDEBAR -->
    <aside class="sidebar">

        <div>
            <div class="logo">
                <div class="logo-icon">
                    <i class="fa-solid fa-heart"></i>
                </div>

                <div>
                    <h3>BloodConnect</h3>
                    <span>Save Lives Together</span>
                </div>
            </div>

            <div class="menu">
                <h5>MAIN</h5>

                <a href="#"><i class="fa-regular fa-house"></i> Dashboard</a>

                <a href="#"><i class="fa-solid fa-magnifying-glass"></i> Find Donors</a>

                <a href="#"><i class="fa-regular fa-triangle-exclamation"></i> Emergency Request</a>

                <h5>MY ACCOUNT</h5>

                <a href="#"><i class="fa-solid fa-list"></i> Request History</a>

                <a href="#" class="active">
                    <i class="fa-regular fa-bell"></i>
                    Notifications
                    <span class="count">2</span>
                </a>

                <a href="#">
                    <i class="fa-regular fa-user"></i>
                    My Profile
                </a>

                <h5>SUPPORT</h5>

                <a href="#">
                    <i class="fa-regular fa-envelope"></i>
                    Contact Us
                </a>
            </div>
        </div>

        <!-- USER CARD -->
        <div class="bottom-section">

            <div class="user-box">
                <div class="avatar">RS</div>

                <div>
                    <h4>Rahul</h4>
                    <p>O+ Donor</p>
                </div>
            </div>

            <a href="#" class="logout">
                <i class="fa-solid fa-arrow-right-from-bracket"></i>
                Sign Out
            </a>

        </div>

    </aside>

    <!-- MAIN CONTENT -->
    <main class="main-content">

        <!-- TOPBAR -->
        <div class="topbar">

            <h2>Notifications</h2>

            <div class="top-icons">

                <div class="bell-icon">
                    <i class="fa-regular fa-bell"></i>
                    <span>2</span>
                </div>

                <div class="profile-circle">
                    RS
                </div>

            </div>

        </div>

        <!-- PAGE HEADER -->
        <div class="page-header">

            <h1>Notifications</h1>

            <p>
                Stay updated on blood requests and donation reminders
            </p>

        </div>

        <!-- NOTIFICATION CARD -->
        <div class="notification-card">

            <div class="card-header">

                <h3>All Notifications</h3>

                <button>Mark all read</button>

            </div>

            <!-- ITEM -->
            <div class="notification-item">

                <div class="icon danger">
                    <i class="fa-solid fa-triangle-exclamation"></i>
                </div>

                <div class="content">
                    <h4>Emergency O+ Request</h4>
                    <p>Apollo Hospital, Hyderabad needs O+ urgently — 2 units</p>
                    <span>10 min ago</span>
                </div>

                <div class="dot"></div>

            </div>

            <!-- ITEM -->
            <div class="notification-item">

                <div class="icon success">
                    <i class="fa-regular fa-heart"></i>
                </div>

                <div class="content">
                    <h4>Donation Reminder</h4>
                    <p>You are now eligible to donate again!</p>
                    <span>1 hour ago</span>
                </div>

                <div class="dot"></div>

            </div>

            <!-- ITEM -->
            <div class="notification-item">

                <div class="icon primary">
                    <i class="fa-solid fa-check"></i>
                </div>

                <div class="content">
                    <h4>Request Accepted</h4>
                    <p>Your blood request for Ramesh K has been accepted</p>
                    <span>3 hours ago</span>
                </div>

            </div>

            <!-- ITEM -->
            <div class="notification-item">

                <div class="icon danger">
                    <i class="fa-solid fa-triangle-exclamation"></i>
                </div>

                <div class="content">
                    <h4>New A+ Request</h4>
                    <p>NIMS Hospital needs A+ — 1 unit</p>
                    <span>Yesterday</span>
                </div>

            </div>

            <!-- ITEM -->
            <div class="notification-item last">

                <div class="icon success">
                    <i class="fa-regular fa-user"></i>
                </div>

                <div class="content">
                    <h4>Profile Updated</h4>
                    <p>Your profile details have been updated successfully</p>
                    <span>2 days ago</span>
                </div>

            </div>

        </div>

    </main>

</div>

</body>
</html>
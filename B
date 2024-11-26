<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>موقع الخرز</title>
    <style>
        /* تنسيق شاشة الترحيب */
        #welcome-screen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #4CAF50;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            z-index: 10;
            animation: fadeOut 0.8s ease-in-out forwards;
        }

        /* إخفاء المحتوى الرئيسي في البداية */
        #main-content.hidden {
            display: none;
        }

        /* تنسيق الموقع الرئيسي */
        #main-content {
            text-align: center;
            padding: 20px;
            font-family: Arial, sans-serif;
        }

        /* حركة عند دخول شاشة الترحيب */
        @keyframes fadeOut {
            0% { opacity: 1; }
            100% { opacity: 0; visibility: hidden; }
        }

        /* أنميشن بسيط للخرز */
        .bead {
            display: inline-block;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            margin: 5px;
            background-color: red;
            animation: bounce 1.5s infinite ease-in-out;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }
    </style>
</head>
<body>
    <!-- شاشة البداية -->
    <div id="welcome-screen">
        <h1>مرحبًا بك يا أخي العزيز</h1>
    </div>

    <!-- الموقع الرئيسي -->
    <div id="main-content" class="hidden">
        <h1>مرحبًا بك في موقع الخرز!</h1>
        <p>إليك مجموعة من الخرز الملون:</p>
        <div>
            <div class="bead" style="background-color: red;"></div>
            <div class="bead" style="background-color: blue;"></div>
            <div class="bead" style="background-color: green;"></div>
            <div class="bead" style="background-color: yellow;"></div>
            <div class="bead" style="background-color: purple;"></div>
        </div>
    </div>

    <script>
        // تأخير إظهار الموقع الرئيسي
        setTimeout(() => {
            document.getElementById('welcome-screen').style.display = 'none';
            document.getElementById('main-content').classList.remove('hidden');
        }, 800); // 800 مللي ثانية (أقل من ثانية)
    </script>
</body>
</html>

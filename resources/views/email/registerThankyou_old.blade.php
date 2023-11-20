<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Email Template</title>
    <!-- <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet"> -->

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&amp;display=swap"
        rel="stylesheet">
    <style>
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJbecmNE.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 800;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 900;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FF;
        }

        .img-responsive {
            max-width: 100%;
        }

        @media (max-width:500px) {
            table tr td.logo {
                width: 100%;
                padding: 0 0 15px;
            }

            .banner-main {
                /* height: 190px !important; */
                padding: 20px 0 0 !important;
                background-size: 100% !important;
                background-position: center bottom !important;
            }

            a.logo img {
                height: 30px !important;
            }

            .middle-content td.wrapper {
                padding: 35px 20px !important;
            }

            .middle-content td.wrapper .title br {
                display: none;
            }

            .middle-content td.wrapper .title {
                font-size: 20px !important;
                line-height: 26px !important;
            }

            .middle-content td.wrapper .p-tag br {
                display: none;
            }

            .middle-content td.wrapper .p-tag {
                font-size: 13px !important;
                line-height: 18px !important;
            }

            .more-data tr:first-child td {
                font-size: 16px !important;
                line-height: 20px !important;
            }

            .more-data {
                padding: 0 20px !important;
            }

            .more-data td.wrapper {
                padding: 17px 0px 30px !important;
            }

            .footer-main {
                padding: 24px 0 !important;
            }

            a.btn {
                font-size: 18px !important;
                line-height: 30px !important;
            }
        }


        @media only screen and (max-width: 671px),
        only screen and (max-device-width: 671px) {

            td {
                white-space: normal;
            }

            .sony-sec {
                padding: 0 15px 0 !important;
            }
            .sony-sec .wrapper td {
                display: block;
                width: 100% !important;
                padding: 0 !important;
            }

            
            .main-title img {
                margin: 0 auto !important;
            }
            .check-title {
                font-size: 16px !important;
                line-height: 20px !important;
                padding: 0 15px !important;

            }
            .main-title span,
            .main-title {
                font-size: 20px !important;
                line-height: 24px !important;
                margin-bottom: 10px !important;
                margin: 0 !important;
            }
            .main-title {
                width: 320px !important;
                margin: 0 auto !important;
            }

            table[class=body] h1 {
                font-size: 28px !important;
                margin-bottom: 10px !important;
            }

            table[class=body] p,
            table[class=body] ul,
            table[class=body] ol,
            table[class=body] td,
            table[class=body] span,
            table[class=body] a {
                font-size: 14px !important;
            }

            table[class=body] .wrapper,
            table[class=body] .article {
                padding: 10px !important;
            }

            table[class=body] .content {
                padding: 10px !important;
            }

            table[class=body] .container {
                padding: 0 !important;
                width: 100% !important;
            }

            table[class=body] .main {
                border-left-width: 0 !important;
                border-radius: 0 !important;
                border-right-width: 0 !important;
            }

            table[class=body] .btn table {
                width: 100% !important;
            }

            .footer-main td img {
                width: 30px;
            }

            .footer-main .social {
                width: 170px !important;
            }

            .links td {
                /* padding: 0 !important; */
            }
            .links a {
                padding: 5px !important;
            }
            .links {
                width: 100% !important;
            }

            .key-main .list-item {
                font-size: 14px !important;
                /* line-height: 14px !important; */
                padding-bottom: 20px !important;

            }

            .key-main {
                padding: 20px 15px !important;
            }

            .wrapper .a-link {
                font-size: 14px !important;
                line-height: 14px !important;
            }

            .topic-main {
                padding-bottom: 0 !important;
            }
            .topic-main .wrapper td {
                padding: 20px !important;
            }
            .topic-main .wrapper div {
                background-size: 320px 140px !important;
                width: 300px !important;
            }
            .topic-main .wrapper td,
            .topic-main .wrapper div,
            .topic-main .wrapper {
                /* width: 100% !important; */
                display: block;
            }

            table[class=body] .btn a {
                width: 100% !important;
            }

            table[class=body] .img-responsive {
                height: auto !important;
                max-width: 100% !important;
                width: auto !important;
            }

            .social-block {
                width: 100% !important;
                float: none !important;
                padding-left: 0px !important;
                padding-right: 0px !important;
            }

            .social-point {
                float: left;
                overflow: hidden;
                width: 100%;
            }

            .footer-main p {
                width: 70% !important;
            }

        }

        @media only screen and (max-width: 671px),
        only screen and (max-device-width: 671px) {



            .padding {
                padding: 20px 0px 0px 0px !important;
            }

            table[class=body] .wrapper,
            table[class=body] .article {
                padding: 10px !important;
            }

            table[class=body] .wrapper,
            table[class=body] .article {
                padding: 10px !important;
            }

            table[class=body] .content {
                padding: 10px !important;
            }

            table[class=body] .container {
                padding: 0 !important;
                width: 100% !important;
            }

            table[class=body] .main {
                border-left-width: 0 !important;
                border-radius: 0 !important;
                border-right-width: 0 !important;
            }

            table[class=body] .btn table {
                width: 100% !important;
            }

            table[class=body] .btn a {
                width: 100% !important;
            }

            table[class=body] .img-responsive {
                height: auto !important;
                max-width: 100% !important;
                width: auto !important;
            }

            .main-table,
            .main-td,
            .main-content {
                width: 100% !important;
                max-width: 100% !important;
            }

            .table-custom table {
                padding: 0px !important;
            }
        }

        @media all {
            .ExternalClass {
                width: 100%;
            }

            .ExternalClass,
            .ExternalClass p,
            .ExternalClass span,
            .ExternalClass font,
            .ExternalClass td,
            .ExternalClass div {
                line-height: 100%;
            }
        }
    </style>

</head>

<body class=""
    style="font-family: 'poppins', Verdana, sans-serif;;-webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; margin: 0 auto; display: block; ">
    <table border="0" cellpadding="0" cellspacing="0" class="body main-table"
        style="border-collapse: separate; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 100%;margin: 0 auto;max-width: 1000px;width: 1000px;">
        <tbody>
            <tr>
                <td class="container main-td"
                    style="font-size: 14px; vertical-align: top; display: block; margin: 0 auto; max-width: 1000px; padding: 0px; width: 1000px;">
                    <div class="content main-content"
                        style="box-sizing: border-box; display: block; margin: 0 auto; max-width: 1000px; padding: 0px;">
                        <table class="main banner-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;border-spacing: 0px;text-align: center;margin: 0 auto;display: table; padding: 40px 0;">

                            <tbody>
                                <tr>
                                    <td class="wrapper"
                                        style="    vertical-align: middle; font-size: 14px; box-sizing: border-box;padding: 0px;text-align: center;  background-color: transparent;text-align: center;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td class="main-title"
                                                        style="vertical-align: middle; text-align: center !important;">
                                                        <span
                                                            style="font-size: 36px;line-height: 36px;color: #0c0c0c;display: block;">All
                                                            India</span>
                                                        <h2 class="main-title"
                                                            style="font-size: 40px;line-height: 60px;color: #0c0c0c;display: block;margin: 0;">
                                                            Corporate Photography Contest</h2>
                                                        <span
                                                            style="font-size: 38px;line-height: 38px;color: #b7935f;display: block;">2023</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="main sony-sec"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;border-spacing: 0px;text-align: center;margin: 0 auto;display: table; padding:0 60px 40px;">

                            <tbody>

                                <tr>
                                    <td class="wrapper"
                                        style="    vertical-align: middle; font-size: 12px; box-sizing: border-box;padding: 0px;text-align: justify; color: #0c0c0c; background-color: transparent;text-align: center;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td style="vertical-align: middle; padding: 0 15px;width: 35%; ">
                                                        <p style="text-align: justify;">The All India Corporate
                                                            Photography Contest is a highly anticipated inter-corporate
                                                            Photography event that is set to take place for the 9th year
                                                            in a row. This annual photography contest has been
                                                            attracting participants from Corporate firms all over India,
                                                            and has proven to be a platform that showcases some of the
                                                            best corporate photography talent in the country. The event
                                                            has gained tremendous popularity over the years, with our
                                                            virtual and offline exhibitions having successfully
                                                            displayed over 8000 photographs to date. Additionally, the
                                                            contest has also been conducting photography workshops that
                                                            have been attended by around 15000 employees, making it one
                                                            of the most sought-after events in the corporate world. The
                                                            9th edition of All India Corporate Photography Contest is
                                                            expected to be yet another exciting chapter in this
                                                            illustrious event's history, and is sure to offer both
                                                            participants and Corporates an unforgettable experience.

                                                        </p>
                                                    </td>
                                                    <td style="vertical-align: top; padding: 0 15px;width: 35%; ">
                                                        <p style="text-align: justify;">Corporate photography contest is
                                                            an excellent way to unlock talent in Photography within your
                                                            company. Corporate Photography Contest provides employees
                                                            with a platform to showcase their skills, creativity, and
                                                            unique perspectives while creating a positive and engaging
                                                            work environment. Corporate photography contest is a
                                                            creative opportunity for employees to develop their skills
                                                            and learn new techniques. We encourage employees to approach
                                                            the contest from different perspectives. By promoting
                                                            diversity of perspectives, employees will be more likely to
                                                            submit unique and creative photographs that reflect their
                                                            individual experiences and insights. Unlocking talent
                                                            through Corporate photography contest can be a great way to
                                                            encourage creativity, skill development, and create a
                                                            positive work environment.

                                                        </p>
                                                    </td>
                                                    <td
                                                        style="vertical-align: middle; text-align: center !important;padding: 0 15px;width: 30%;">
                                                        <p style="margin: 0;">in assocation with</p>
                                                        <img src="https://i.postimg.cc/4xhCDmjK/sony.png" alt="sony"
                                                            class="img-responsive">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                        <table class="main banner-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;border-spacing: 0px;text-align: center;margin: 0 auto;display: table; padding: 0 0 40px;">

                            <tbody>
                                <tr>
                                    <td class="wrapper"
                                        style="    vertical-align: middle;  box-sizing: border-box;padding: 0px 0 30px;text-align: justify;  background-color: transparent;text-align: center;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td class="check-title"
                                                        style="vertical-align: middle; font-size: 22px;line-height: 22px;color: #b7935f;display: block;">
                                                        Check on the below tabs to know more about the contest
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="wrapper links" style="    vertical-align: middle;  box-sizing: border-box;padding: 0px 0 30px;text-align: justify;  background-color: transparent;text-align: center;max-width: 600px;
                                        margin: 0 auto;
                                        width: 600px;
                                        display: table;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td
                                                        style="vertical-align: middle;width: 33.33333%;padding: 0 8px 16px;">
                                                        <a href="{{ route('road-map') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">Road
                                                            Map</a>
                                                    </td>
                                                    <td
                                                        style="vertical-align: middle;width: 33.33333%;padding: 0 8px 16px;">
                                                        <a href="{{ route('rules-and-regulations') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">Rules</a>
                                                    </td>
                                                    <td
                                                        style="vertical-align: middle;width: 33.33333%;padding: 0 8px 16px;">
                                                        <a href="{{ route('faq') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">FAQ’s</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="vertical-align: middle;width: 33.33333%;padding: 0 8px;">
                                                        <a href="{{ route('categories') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">Categories</a>
                                                    </td>
                                                    <td style="vertical-align: middle;width: 33.33333%;padding: 0 8px;">
                                                        <a href="{{ route('our-judges') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">Our
                                                            Judges</a>
                                                    </td>
                                                    <td style="vertical-align: middle;width: 33.33333%;padding: 0 8px;">
                                                        <a href="{{ route('rules-and-regulations') }}" class="a-link"
                                                            style="font-size: 22px;line-height: 22px;color: #faf8f8;display: block;background: #b7935f;padding: 12px;border-radius: 5px;text-decoration: none;">Terms</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <table class="main topic-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;border-spacing: 0px;text-align: center;margin: 0 auto;display: table; padding: 40px 0;background: #b7935f;">

                            <tbody>

                                <tr>
                                    <td class="wrapper"
                                        style="    vertical-align: middle;  box-sizing: border-box;padding: 0px 0 30px;text-align: justify;  background-color: transparent;text-align: center;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td style="vertical-align: middle;padding: 0;">
                                                        <div
                                                            style="font-size: 22px;line-height: 28px;min-height: 90px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 40px 30px 0;background: url(https://i.postimg.cc/Hk5Z68PB/leaf-bg.png) no-repeat;        background-size: 270px 120px;background-position: center center;width: 270px;margin: 0 auto;">
                                                            Category <br>
                                                            Winners
                                                        </div>
                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">Selected
                                                            by Judges</span>
                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">18
                                                            Nos</span>
                                                    </td>
                                                    <td style="vertical-align: middle;padding: 0;">
                                                        <div
                                                            style="font-size: 22px;line-height: 28px;min-height: 90px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 40px 30px 0;background: url(https://i.postimg.cc/Hk5Z68PB/leaf-bg.png) no-repeat;        background-size: 270px 120px;background-position: center center;width: 270px;margin: 0 auto;">
                                                            Top Virutal <br>
                                                            Exhibited Photos
                                                        </div>

                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">Selected by Moderators</span>
                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">Approx 1000 Nos</span>
                                                    </td>
                                                    <td style="vertical-align: middle;padding: 0;">
                                                        <div
                                                            style="font-size: 22px;line-height: 28px;min-height: 90px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 40px 30px 0;background: url(https://i.postimg.cc/Hk5Z68PB/leaf-bg.png) no-repeat;        background-size: 270px 120px;background-position: center center;width: 270px;margin: 0 auto;">
                                                            Top Voted <br>
                                                            Photo
                                                        </div>
                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">Number of Votes</span>
                                                        <span
                                                            style="font-size: 15px;line-height: 18px;color: #faf8f8;display: block;">1 No</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="main key-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;border-spacing: 0px;text-align: left;margin: 0 auto;display: table; padding: 30px 60px 60px;background: #554631;">

                            <tbody>
                                <tr>
                                    <td class="wrapper"
                                        style="    vertical-align: middle;  box-sizing: border-box;padding: 0px;text-align: left;  background-color: transparent;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td
                                                        style="vertical-align: middle;font-size: 22px;line-height: 28px; font-weight: 700;color: #fcd193;vertical-align: middle;padding: 0 0 30px;">
                                                        Key Notes
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="list-item"
                                                        style="vertical-align: middle;font-size: 16px;line-height: 22px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 0 0 30px;">
                                                        <img style="    display: inline-block;vertical-align: middle;margin-right: 8px;"
                                                            src="https://i.postimg.cc/wxPTJ3yw/arrow.png" alt="arrow"
                                                            class="img-responsive"> You can upload a total of maximum 5
                                                        Photographs.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="list-item"
                                                        style="vertical-align: middle;font-size: 16px;line-height: 22px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 0 0 30px;">
                                                        <img style="    display: inline-block;vertical-align: middle;margin-right: 8px;"
                                                            src="https://i.postimg.cc/wxPTJ3yw/arrow.png" alt="arrow"
                                                            class="img-responsive"> Maximum upload size is 5 MB.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="list-item"
                                                        style="vertical-align: middle;font-size: 16px;line-height: 22px; font-weight: 700;color: #faf8f8;vertical-align: middle;padding: 0;">
                                                        <img style="    display: inline-block;vertical-align: middle;margin-right: 8px;"
                                                            src="https://i.postimg.cc/wxPTJ3yw/arrow.png" alt="arrow"
                                                            class="img-responsive"> Do not upload photos with watermarks
                                                        or borders.
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>


                        <table class="main footer-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt;background: #b7935f; mso-table-rspace: 0pt; width: 100%; border-spacing: 0px;    padding: 32px;width: 100%;border-spacing: 0px;margin: 0 auto;">
                            <tbody>
                                <tr>
                                    <td class="wrapper"
                                        style="font-size: 14px; vertical-align: top; box-sizing: border-box;padding: 0px;width: 100%;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 270px;margin:0 auto;padding: 0; text-align: center;">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="
                                                                    font-style: normal;
                                                                    font-weight: 700;
                                                                    font-size: 30px;
                                                                    line-height: 30px;
                                                                    color: #FFFFFF;                                                                    
                                                                    padding: 0 0 30px;">
                                                                        Follow us
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td>
                                                        <table border="0" cellpadding="0" class="social" cellspacing="0"
                                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 270px;margin:0 auto;padding: 0; text-align: center;">
                                                            <tbody>
                                                                <tr>
                                                                    <td
                                                                        style="width:33.333333%;vertical-align: middle;">
                                                                        <a href="{{$globalSettings['facebook-link']}}" class="a-link" target="_blank"
                                                                            style="display: block;">
                                                                            <img src="https://i.postimg.cc/Kkjt0GyX/facebook.png"
                                                                                alt="social" width="65"
                                                                                class="img-responsive">
                                                                        </a>
                                                                    </td>
                                                                    <td
                                                                        style="width:33.333333%;vertical-align: middle;">
                                                                        <a href="{{$globalSettings['instagram-link']}}" class="a-link" target="_blank"
                                                                            style="display: block;">
                                                                            <img src="https://i.postimg.cc/30DmHtRn/insta.png"
                                                                                width="65" alt="social"
                                                                                class="img-responsive">
                                                                        </a>
                                                                    </td>
                                                                    <td
                                                                        style="width:33.333333%;vertical-align: middle;">
                                                                        <a href="{{$globalSettings['linkedin-link']}}" class="a-link" target="_blank"
                                                                            style="display: block;">
                                                                            <img src="https://i.postimg.cc/wyrLPC61/linkdin.png"
                                                                                alt="social" width="65"
                                                                                class="img-responsive">
                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="wrapper"
                                                        style="font-size: 14px; vertical-align: top; box-sizing: border-box;padding: 0px;width: 100%;">
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <table border="0" cellpadding="0"
                                                                            cellspacing="0"
                                                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; margin:0 auto;padding: 30px 0 0; text-align: center;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td
                                                                                        style="width:33.333333%;vertical-align: middle;">
                                                                                        <a href="mailto:info@corporatephotographycontest.com" class="a-link"
                                                                                            target="_blank" style="font-style: normal;
                                                                                            font-weight: 500;
                                                                                            font-size: 24px;
                                                                                            line-height: 24px;
                                                                                            color: #FFFFFF;                                                                    
                                                                                            padding: 0;
                                                                                            text-decoration: none;">
                                                                                            info@corporatephotographycontest.com
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="main discount-main"
                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; border-spacing: 0px;    padding: 0;width: 100%;border-spacing: 0px;margin: 0 auto;">
                            <tbody>
                                <tr>
                                    <td class="wrapper"
                                        style="font-size: 14px; vertical-align: top; box-sizing: border-box;padding: 0px;width: 100%;">
                                        <table border="0" cellpadding="0" cellspacing="0"
                                            style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt;margin:0 auto;padding: 0; text-align: center;">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="a-link">
                                                            <img src="https://i.postimg.cc/GpvfyqRL/discount.png"
                                                                alt="discount" class="img-responsive">
                                                        </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>
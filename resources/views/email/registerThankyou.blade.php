<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Corporate Creative Challenge 2023 | Email template</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }
    </style>
</head>

<body>
    <table style="border: 0;padding: 0;margin: 0 auto;max-width: 640px;">
        <tr>
            <td align="center" bgcolor="#fff" background="{{ asset('front/images/email-bg.jpg')}}" width="640" valign="top"
                style="background: url('{{ asset('front/images/email-bg.jpg')}}') top center / auto 100%  no-repeat #fff;padding: 30px 15px 15px;">
                <table
                    style="border: 0;padding: 0;margin: 0 auto;width: 100%;font-family: Arial, verdana;font-size: 13px;line-height: 24px;">
                    <tr>
                        <td align="right">
                            <a href="{{config('app.url') }}">
                                <img src="{{ asset('front/images/email-logo.png')}}" width="172" height="56" style="display: inline-block;"
                                    alt="" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <p><b>Dear Viral,<br>
                                    Thank You for registering in Corporate Creative Challenge 2023 !!!</b></p>
                            <p>The Corporate Creative Challenge is an inter-corporate visual communication competition
                                featuring three distinct categories for creative submissions crafted using Adobe
                                Express. The primary aim of this endeavor is to ignite and nurture the creative prowess
                                of our employees in the realm of visual narrative.</p>
                            <p>An admirable facet of this challenge lies in its inclusivity, as participants need not
                                possess any prior graphic expertise to engage in this captivating competition. Hence, we
                                warmly invite all employees to partake actively in the Corporate Creative Challenge.</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fff" width="640" height="auto" valign="top" style="padding: 0px 15px 15px;">
                <table
                    style="border: 0;padding: 0;margin: 0 auto;width: 100%;font-family: Arial, verdana;font-size: 13px;line-height: 24px;">
                    <tr>
                        <td align="center">
                            <p style="color:#b7935f;"><b>Check on the below tabs to know more about the challenge</b>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <table style="width:auto;margin: 0 auto;max-width: 520px;">
                                <tr>
                                    <td align="center" style="padding: 2px;">
                                        <a href="{{ route('road-map') }}"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">Road
                                            Map</a>
                                    </td>
                                    <td align="center" style="padding: 2px;">
                                        <a href="{{ route('how-it-works') }}"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">How
                                            it works</a>
                                    </td>
                                    <td align="center" style="padding: 2px;">
                                        <a href="{{ route('faq') }}"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">FAQ’s</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="padding: 2px;">
                                        <a href="#"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">Categories</a>
                                    </td>
                                    <td align="center" style="padding: 2px;">
                                        <a href="{{ route('prize') }}"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">Prizes</a>
                                    </td>
                                    <td align="center" style="padding: 2px;">
                                        <a href="{{ route('terms-conditions') }}"
                                            style="background-color:#b7935f;text-decoration: none;color:#fff;font-family: cursive;font-weight: bold; padding: 8px 12px;font-size: 14px;border-radius: 8px;display: block;">Terms</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


        <tr>
            <td align="center" style="background-color: #b7935f;">
                <table
                    style="width:100%;margin: 0 auto;border: 0;padding: 0 0 15px;margin: 0 auto;width: 100%;font-family: Arial, verdana;font-size: 13px;line-height: 24px;background-color: #b7935f;">
                    <tr>
                        <td align="center" colspan="3">
                            <h3 style="font-weight: bold;color:#fff;"><b>Prizes per category</b></h3>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="padding: 2px 5px ;">
                            <img style="display: block;max-width: 100%;" src="{{ asset('front/images/email-award-price-1.png')}}" alt="" />
                        </td>
                        <td align="center" style="padding: 2px 5px ;">
                            <img style="display: block;max-width: 100%;" src="{{ asset('front/images/email-award-price-2.png')}}" alt="" />
                        </td>
                        <td align="center" style="padding: 2px 5px ;">
                            <img style="display: block;max-width: 100%;" src="{{ asset('front/images/email-award-price-3.png')}}" alt="" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>



        <tr>
            <td align="left" bgcolor="#fff" background="{{ asset('front/images/email-bg.jpg')}}" width="640" valign="top"
            style="background: url('{{ asset('front/images/email-bg.jpg')}}') top center / auto 100% no-repeat #fff;padding: 15px 15px 15px;">
                <table
                    style="border: 0;padding: 0;margin: 0 auto;width: 100%;font-family: Arial, verdana;font-size: 13px;line-height: 24px;">
                    <tr>
                        <td align="left">
                            <p><b>Notes,</b></p>
                            <ul style="margin: 15px 0; list-style: none;padding: 0;">
                                <li style="margin: 0 0 15px; padding: 0 0 0 30px;background-image: url({{ asset('front/images/email-bullate.png')}});background-position: 2px 3px;background-repeat: no-repeat;">All creative submissions must be exclusively generated via the Adobe Express website.</li>
                                <li style="margin: 0 0 15px; padding: 0 0 0 30px;background-image: url({{ asset('front/images/email-bullate.png')}});background-position: 2px 3px;background-repeat: no-repeat;">Each participant is restricted to crafting a solitary creation within a specific category.</li>
                                <li style="margin: 0 0 15px; padding: 0 0 0 30px;background-image: url({{ asset('front/images/email-bullate.png')}});background-position: 2px 3px;background-repeat: no-repeat;">Our Categories<br>
                                    LinkedIn Cover Page<br>
                                    Email Header<br>
                                    Microsoft Zoom Cover Page<br></li>
                            </ul>
                        <p>The Corporate Creative Challenge is an inter-corporate visual communication competition
                            featuring three distinct categories for creative submissions crafted using Adobe
                            Express. The primary aim of this endeavor is to ignite and nurture the creative prowess
                            of our employees in the realm of visual narrative.</p>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <p style="color:#b7935f;font-size: 18px;text-align: center;font-weight: bold;">For more information mail us<br><a href="mailto:info@corporatecreativechallenge.com" style="color:#000;font-size: 13px;text-decoration: none; text-align: center;font-weight: bold;">info@corporatecreativechallenge.com</a></p>
                        </td>
                    </tr>


                </table>
            </td>
        </tr> 

    </table>
 
</body>

</html>
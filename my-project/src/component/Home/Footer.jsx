import React from "react";

const Footer = () => {
  return (
    <div className="  bg-gradient-to-b from-gray-400/60 from-40%  to-gray-400/10 to-100%  mt-24 py-5 container">
      <div className="p-4 rounded-2xl">
        <img
          src="logo/logo.png"
          className="w-28 mix-blend-multiply	"
          alt="logo"
        />

        <div className="grid md:flex justify-between mt-9 gap-6">
          <div className="space-y-4 text-colorTwo font-medium text-lg">
            <div>#1 website designing company in Delhi NCR</div>
            <div>
              <div>info@kkrfgroup.com</div>
            </div>
          </div>

          <div>
            <div>Follow us on</div>
            <div className="flex gap-4 text-2xl mt-2">
              <ion-icon
                name="logo-facebook"
                className="cursor-pointer"
              ></ion-icon>
              <ion-icon
                name="logo-instagram"
                className="cursor-pointer"
              ></ion-icon>
              <ion-icon
                name="logo-linkedin"
                className="cursor-pointer"
              ></ion-icon>
            </div>
          </div>
        </div>

        <div className="" >
          <div className="border-t border-colorTwo/20 mt-24 py-4 text-gray-400 text-xs font-normal">
            Copyright 2008 2024 KKRF Group. All Rights Reserved.
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;

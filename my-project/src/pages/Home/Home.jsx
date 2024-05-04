import React from "react";
import Work from "../../component/Home/Work";
import OurStats from "../../component/Home/OurStats";
import Herosection from "../../component/Home/Herosection";
import Whoweare from "../../component/Home/Whoweare";
import Clients from "../../component/Home/Clients";
import Question from "../../component/Home/Question";
import Services from "../../component/Home/Services";

const Home = () => {


  return (
    <div className="">
      <Herosection />
      <OurStats />
      <Work />
      <Whoweare />
      <Services />
      <Clients />
      <Question />
    </div>
  );
};

export default Home;

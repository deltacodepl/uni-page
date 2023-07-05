import React from 'react';

import About from '../components/About';
import Inquiry from '../components/Inquiry';
import Contact from '../components/Contact';
import Hero from '../components/Hero';
import Projects from '../components/Projects';
import Gallery from '../components/Gallery';

const Home = () => {
  return (
    <div id='home'>
      <Hero />
      <About />
      <Projects />
      <Gallery />
      <Inquiry />
      <Contact />
    </div>
  );
};

export default Home;
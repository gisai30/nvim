import './prettier.config';
let hola = () => {
  console.log('Hola mundo');
  const getse = () => {
    console.log('kjansdkjansd');
  };
  const hola = 12;
  console.log(hola);
  // hola mundo
  getse();

  let isai = 'Isai';
  return false;
};

import axios from 'axios';

function hola() {
  console.log('getsemani');
  return null;
  console.log(12);
}

export default class Tower {
  constructor(ip) {
    this.ip = '192.168.0.50';
    this.control = '/api/control?';
    this.valueOn = 'color=23451';
    this.valueOff = 'clear=1';
    this.action = '';
    this.hola = ip;
  }

  async sendQuest() {
    try {
      const resp = await axios.get(
        `http://${this.ip}${this.control}${this.action}`
      );

      if (resp.data == 'Error') {
        console.log(resp);
        return 'Error al enviar los datos';
      }
      return resp.data;
    } catch (error) {
      console.log(error);
      console.log('ERROR');
    }
  }

  on() {
    this.action = `${this.valueOn}&buzzer=0`;
    console.log(this);
    console.log(`hola ${this.ip}`);
    return this.sendQuest();
  }

  off() {
    this.action = this.valueOff;
    return this.sendQuest();
  }

  alert() {
    this.action = 'color=22522&flashe=00100&buzzer=5';
    return this.sendQuest();
  }
}

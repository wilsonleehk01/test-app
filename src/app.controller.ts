import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

// Controller is a decorator that defines a class as a controller in Nest.js
@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}

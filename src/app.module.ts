import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConsoleModule } from './console/console.module';
import { AuthModule } from './auth/auth.module';
import { VendorModule } from './vendor/vendor.module';
import { ClientModule } from './client/client.module';

@Module({
  imports: [ConsoleModule, AuthModule, VendorModule, ClientModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}

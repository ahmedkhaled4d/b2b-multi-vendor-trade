import { Module } from '@nestjs/common';
import { AccountController } from './account/account.controller';
import { WalletController } from './wallet/wallet.controller';

@Module({
  controllers: [AccountController, WalletController]
})
export class ClientModule {}

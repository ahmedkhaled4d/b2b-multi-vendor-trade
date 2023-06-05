import { Module } from '@nestjs/common';
import { MarketingModule } from './marketing/marketing.module';
import { InsightsModule } from './insights/insights.module';

@Module({
  imports: [MarketingModule, InsightsModule],
})
export class ConsoleModule {}

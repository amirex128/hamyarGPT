<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $gatewaycode
 * @property string|null $webhook_id
 * @property string|null $create_time
 * @property string|null $resource_type
 * @property string|null $event_type
 * @property string|null $summary
 * @property string|null $resource_id
 * @property string|null $resource_state
 * @property string|null $parent_payment
 * @property string|null $amount_total
 * @property string|null $amount_currency
 * @property string|null $incoming_json
 * @property string|null $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory query()
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereAmountCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereAmountTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereCreateTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereEventType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereGatewaycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereIncomingJson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereParentPayment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereResourceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereResourceState($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereResourceType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WebhookHistory whereWebhookId($value)
 * @mixin \Eloquent
 */
class WebhookHistory extends Model
{
    protected $table = 'webhookhistory';

    protected $guarded = [];
}

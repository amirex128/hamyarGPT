<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property string $order_id
 * @property int $plan_id
 * @property string|null $total_amount
 * @property string $proof_image
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof query()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereProofImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereTotalAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentProof whereUserId($value)
 * @mixin \Eloquent
 */
class PaymentProof extends Model
{
    protected $table = 'payment_proofs';

    protected $guarded = [];
}

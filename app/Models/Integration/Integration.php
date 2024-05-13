<?php

namespace App\Models\Integration;

use App\Models\Extension;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * 
 *
 * @property int $id
 * @property string|null $app
 * @property string|null $description
 * @property string|null $image
 * @property string|null $slug
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read Extension|null $extension
 * @property-read Extension|null $hasExtension
 * @method static \Illuminate\Database\Eloquent\Builder|Integration newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Integration newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Integration query()
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Integration whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Integration extends Model
{
    protected $table = 'integrations';

    protected $fillable = [
        'app',
        'description',
        'image',
        'slug',
        'status'
    ];

    public function hasExtension(): HasOne
    {
        return $this->hasOne(Extension::class, 'slug', 'slug')->where('installed', 1);
    }

    public function extension(): HasOne
    {
        return $this->hasOne(Extension::class, 'slug', 'slug');
    }


    public function getFormClassName(): string
    {
        return 'App\Services\Integration\\' . ucfirst($this->app);
    }
}

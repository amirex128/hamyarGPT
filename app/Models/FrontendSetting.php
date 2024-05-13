<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $header_title
 * @property string $header_text
 * @property string $hero_subtitle
 * @property string $hero_title
 * @property string $hero_description
 * @property string $hero_scroll_text
 * @property string $hero_button
 * @property string|null $hero_button_url
 * @property int $hero_button_type
 * @property string $footer_header
 * @property string $footer_text_small
 * @property string $footer_text
 * @property string $footer_button_text
 * @property string $footer_button_url
 * @property string $footer_copyright
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $hero_title_text_rotator
 * @property string $sign_in
 * @property string $join_hub
 * @property string|null $floating_button_small_text
 * @property string|null $floating_button_bold_text
 * @property string|null $floating_button_link
 * @property int $floating_button_active
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFloatingButtonActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFloatingButtonBoldText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFloatingButtonLink($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFloatingButtonSmallText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterButtonText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterButtonUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterCopyright($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterHeader($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereFooterTextSmall($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeaderText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeaderTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroButton($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroButtonType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroButtonUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroScrollText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroSubtitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereHeroTitleTextRotator($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereJoinHub($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereSignIn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendSetting whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class FrontendSetting extends Model
{
    protected $table = 'frontend_footer_settings';
}

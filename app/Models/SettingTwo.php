<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $theme
 * @property string|null $stable_diffusion_api_key
 * @property string|null $stable_diffusion_default_model
 * @property int $google_recaptcha_status
 * @property string|null $google_recaptcha_site_key
 * @property string|null $google_recaptcha_secret_key
 * @property string|null $languages
 * @property string $languages_default
 * @property string|null $liquid_license_type
 * @property string|null $liquid_license_domain_key
 * @property string $openai_default_stream_server
 * @property string $ai_image_storage
 * @property string $stablediffusion_default_language
 * @property string $stablediffusion_default_model
 * @property string|null $unsplash_api_key
 * @property string|null $dalle
 * @property int $daily_limit_enabled
 * @property int $allowed_images_count
 * @property int $daily_voice_limit_enabled
 * @property int $allowed_voice_count
 * @property string|null $serper_api_key
 * @property string|null $elevenlabs_api_key
 * @property int $feature_tts_google
 * @property int $feature_tts_openai
 * @property int $feature_tts_elevenlabs
 * @property string|null $fine_tune_list
 * @property string|null $chatbot_status
 * @property int|null $chatbot_template
 * @property string|null $chatbot_position
 * @property int $chatbot_login_require
 * @property int|null $chatbot_rate_limit
 * @property int $feature_ai_video
 * @property int $chatbot_show_timestamp
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo query()
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereAiImageStorage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereAllowedImagesCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereAllowedVoiceCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotLoginRequire($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotPosition($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotRateLimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotShowTimestamp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereChatbotTemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereDailyLimitEnabled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereDailyVoiceLimitEnabled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereDalle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereElevenlabsApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereFeatureAiVideo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereFeatureTtsElevenlabs($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereFeatureTtsGoogle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereFeatureTtsOpenai($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereFineTuneList($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereGoogleRecaptchaSecretKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereGoogleRecaptchaSiteKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereGoogleRecaptchaStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereLanguages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereLanguagesDefault($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereLiquidLicenseDomainKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereLiquidLicenseType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereOpenaiDefaultStreamServer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereSerperApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereStableDiffusionApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereStableDiffusionDefaultModel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereStablediffusionDefaultLanguage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereTheme($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SettingTwo whereUnsplashApiKey($value)
 * @mixin \Eloquent
 */
class SettingTwo extends Model
{
    use HasFactory;

    protected $guarded =  [];

    protected $table = 'settings_two';

    public $timestamps = false;
}

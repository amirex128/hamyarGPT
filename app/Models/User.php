<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\Integration\UserIntegration;
use App\Models\Team\Team;
use App\Models\Team\TeamMember;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;
use Laravel\Cashier\Billable;
use Laravel\Cashier\Subscription;
// use Laravel\Sanctum\HasApiTokens;
use Laravel\Cashier\Subscription as Subscriptions;
use Laravel\Passport\HasApiTokens;

/**
 * 
 *
 * @property int $id
 * @property string|null $coingate_subscriber_id
 * @property int|null $team_id
 * @property int|null $team_manager_id
 * @property string $name
 * @property string $surname
 * @property string $email
 * @property string|null $phone
 * @property string $type
 * @property string $password
 * @property string $avatar
 * @property string|null $company_name
 * @property string|null $company_website
 * @property string|null $country
 * @property string|null $address
 * @property string|null $postal
 * @property int $status
 * @property int $remaining_words
 * @property int $remaining_images
 * @property string|null $last_seen
 * @property string|null $github_id
 * @property string|null $github_token
 * @property string|null $google_id
 * @property string|null $google_token
 * @property string|null $facebook_id
 * @property string|null $facebook_token
 * @property string|null $twitter_id
 * @property string|null $twitter_token
 * @property string|null $google2fa_secret
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $stripe_id
 * @property string|null $pm_type
 * @property string|null $pm_last_four
 * @property string|null $trial_ends_at
 * @property string|null $affiliate_code
 * @property string $affiliate_earnings
 * @property string|null $affiliate_bank_account
 * @property int|null $affiliate_id
 * @property string|null $email_confirmation_code
 * @property int $email_confirmed
 * @property string|null $password_reset_code
 * @property string|null $github_refresh_token
 * @property string|null $google_refresh_token
 * @property string|null $iyzico_id
 * @property string|null $revenuecat_id
 * @property string|null $apple_id
 * @property string|null $apple_token
 * @property string|null $apple_refresh_token
 * @property string|null $razorpay_id
 * @property string|null $api_keys
 * @property string|null $gemini_api_keys
 * @property string|null $anthropic_api_keys
 * @property string|null $remember_token
 * @property string|null $defi_setting
 * @property int|null $affiliate_status
 * @property-read User|null $affiliateOf
 * @property-read \Illuminate\Database\Eloquent\Collection<int, User> $affiliates
 * @property-read int|null $affiliates_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Passport\Client> $clients
 * @property-read int|null $clients_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Company> $companies
 * @property-read int|null $companies_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Coupon> $couponsUsed
 * @property-read int|null $coupons_used_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\OpenAIGenerator> $favoriteOpenai
 * @property-read int|null $favorite_openai_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Folders> $folders
 * @property-read int|null $folders_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, UserIntegration> $integrations
 * @property-read int|null $integrations_count
 * @property-read Team|null $myCreatedTeam
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserOpenai> $openai
 * @property-read int|null $openai_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserOpenaiChat> $openaiChat
 * @property-read int|null $openai_chat_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserOrder> $orders
 * @property-read int|null $orders_count
 * @property-read \App\Models\PaymentPlans|null $relationPlan
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Subscriptions> $subscriptions
 * @property-read int|null $subscriptions_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserSupport> $supportRequests
 * @property-read int|null $support_requests_count
 * @property-read Team|null $team
 * @property-read User|null $teamManager
 * @property-read TeamMember|null $teamMember
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Passport\Token> $tokens
 * @property-read int|null $tokens_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserAffiliate> $withdrawals
 * @property-read int|null $withdrawals_count
 * @method static \Database\Factories\UserFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder|User hasExpiredGenericTrial()
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User onGenericTrial()
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAffiliateBankAccount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAffiliateCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAffiliateEarnings($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAffiliateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAffiliateStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAnthropicApiKeys($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereApiKeys($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAppleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAppleRefreshToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAppleToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCoingateSubscriberId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCompanyWebsite($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereDefiSetting($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmailConfirmationCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmailConfirmed($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereFacebookId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereFacebookToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGeminiApiKeys($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGithubId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGithubRefreshToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGithubToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGoogle2faSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGoogleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGoogleRefreshToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereGoogleToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereIyzicoId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereLastSeen($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePasswordResetCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePmLastFour($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePmType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePostal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRazorpayId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRemainingImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRemainingWords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRevenuecatId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereSurname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereTeamManagerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereTwitterId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereTwitterToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class User extends Authenticatable
{
    use Billable, HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'coingate_subscriber_id',
        'team_id',
        'team_manager_id',
        'name',
        'surname',
        'email',
        'password',
        'affiliate_id',
        'affiliate_code',
        'remaining_words',
        'remaining_images',
        'email_confirmation_code',
        'email_confirmed',
        'password_reset_code',
        'anthropic_api_keys',
        'api_keys'
    ];

    protected $hidden = [
        'password',
        'remember_token',
        'google2fa_secret'
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function isAdmin(): bool
    {
        return $this->type == 'admin';
    }

    protected static function boot()
    {
        parent::boot();

        static::created(function ($user) {
            // Setting::query()->increment('user_count');
			Usage::getSingle()->updateUserCount(1);
        });
		static::deleted(function ($user) {
			$user->orders()->delete();
		});
    }

    public function integrations(): HasMany
    {
        return $this->hasMany(UserIntegration::class)->with('integration');
    }

    public function isUser(): bool
    {
        return $this->type == 'user';
    }

    public function teamManager(): BelongsTo
    {
        return $this->belongsTo(User::class, 'team_manager_id', 'id');
    }

    public function teamMember(): HasOne
    {
        return $this->hasOne(TeamMember::class, 'user_id', 'id');
    }

    public function team(): BelongsTo
    {
        return $this->belongsTo(Team::class, 'team_id', 'id');
    }

    public function myCreatedTeam()
    {
        return $this->hasOne(Team::class, 'user_id', 'id');
    }

    public function relationPlan()
    {
        return $this->hasOneThrough(
            PaymentPlans::class,
            Subscriptions::class,
            'user_id',
            'id',
            'id',
            'plan_id'
        );
    }

    public function getRemainingWordsAttribute($value)
    {
        if ($this->type == 'admin') {
            return $value;
        }

        if ($this->team_id == null) {
            return $value;
        }

        $teamMember = $this->teamMember;

        if (! $teamMember) {
            return $value;
        }

        if ($teamMember?->allow_unlimited_credits) {
            return $this->teamManager->remaining_words;
        } else {
            return $this->teamMember->remaining_words;
        }

        return $value;
    }

    public function getRemainingImagesAttribute($value)
    {
        if ($this->type == 'admin') {
            return $value;
        }

        if ($this->team_id == null) {
            return $value;
        }

        $teamMember = $this->teamMember;

        if (! $teamMember) {
            return $value;
        }

        if ($teamMember?->allow_unlimited_credits) {
            return $this->teamManager->remaining_images;
        } else {
            return $this->teamMember->remaining_images;
        }

        return $value;
    }

    public function fullName()
    {
        return $this->name.' '.$this->surname;
    }

    public function email()
    {
        return $this->email;
    }

    public function openai()
    {
        return $this->hasMany(UserOpenai::class);
    }

    public function orders()
    {
        return $this->hasMany(UserOrder::class)->orderBy('created_at', 'desc');
    }

    public function plan()
    {
        return $this->hasMany(UserOrder::class)
            ->where('type', 'subscription')
            ->orderBy('created_at', 'desc')
            ->first();
    }

    public function activePlan()
    {
        // $activeSub = $this->subscriptions()->where('stripe_status', 'active')->orWhere('stripe_status', 'trialing')->first();
        // $userId=Auth::user()->id;
        $userId = $this->id;
        // Get current active subscription
        $activeSub = getCurrentActiveSubscription($userId);
        if ($activeSub != null) {
            $plan = PaymentPlans::where('id', $activeSub->plan_id)->first();
            if ($plan == null) {
                return null;
            }
            $difference = $activeSub->updated_at->diffInDays(Carbon::now());
            if ($plan->frequency == 'monthly') {
                if ($difference < 31) {
                    return $plan;
                }
            } elseif ($plan->frequency == 'yearly') {
                if ($difference < 365) {
                    return $plan;
                }
            }else{
				return $plan;
			}
        } else {
            $activeSub = getCurrentActiveSubscriptionYokkasa($userId);
            if ($activeSub != null) {
                $plan = PaymentPlans::where('id', $activeSub->plan_id)->first();
                if ($plan == null) {
                    return null;
                }
                $difference = $activeSub->updated_at->diffInDays(Carbon::now());
                if ($plan->frequency == 'monthly' || $plan->frequency == 'lifetime_monthly') {
                    if ($difference < 31) {
                        return $plan;
                    }
                } elseif ($plan->frequency == 'yearly' || $plan->frequency == 'lifetime_yearly') {
                    if ($difference < 365) {
                        return $plan;
                    }
                }else{
					return $plan;
				}
            } else {
                return null;
            }
        }
    }

    //Support Requests
    public function supportRequests()
    {
        return $this->hasMany(UserSupport::class);
    }

    //Favorites
    public function favoriteOpenai()
    {
        return $this->belongsToMany(OpenAIGenerator::class, 'user_favorites', 'user_id', 'openai_id');
    }

    //Affiliate
    public function affiliates()
    {
        return $this->hasMany(User::class, 'affiliate_id', 'id');
    }

    public function affiliateOf()
    {
        return $this->belongsTo(User::class, 'affiliate_id', 'id');
    }

    public function withdrawals()
    {
        return $this->hasMany(UserAffiliate::class);
    }

    //Chat
    public function openaiChat()
    {
        return $this->hasMany(UserOpenaiChat::class);
    }

    //Avatar
    public function getAvatar()
    {
        if ($this->avatar == null) {
            return '<span class="avatar">'.Str::upper(substr($this->name, 0, 1)).Str::upper(substr($this->surname, 0, 1)).'</span>';
        } else {
            $avatar = $this->avatar;
            if (strpos($avatar, 'http') === false || strpos($avatar, 'https') === false) {
                $avatar = '/'.$avatar;
            }

            return ' <span class="avatar" style="background-image: url('.custom_theme_url($avatar).')"></span>';
        }
    }

    public function couponsUsed()
    {
        return $this->belongsToMany(Coupon::class, 'coupon_users')
            ->withTimestamps();
    }

    public function twitterSettings()
    {
        if (class_exists(\App\Models\Automation\TwitterSettings::class)) {
            return $this->hasMany(\App\Models\Automation\TwitterSettings::class);
        }

        return null;
    }

    public function linkedinSettings()
    {
        if (class_exists(\App\Models\Automation\LinkedinTokens::class)) {
            return $this->hasMany(\App\Models\Automation\LinkedinTokens::class);
        }

        return null;
    }

    public function scheduledPosts()
    {
        if (class_exists(\App\Models\Automation\ScheduledPosts::class)) {
            return $this->hasMany(\App\Models\Automation\ScheduledPosts::class);
        }

        return null;
    }

    public function folders()
    {
        return $this->hasMany(Folders::class, 'created_by');
    }

    // my companies
    public function companies()
    {
        return $this->hasMany(Company::class, 'user_id');
    }

    public function getCompanies()
    {
        return $this->companies()->orderBy('name', 'asc')->get();
    }
}
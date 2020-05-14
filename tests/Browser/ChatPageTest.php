<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ChatPageTest extends DuskTestCase
{
    /**
     * Checks if a logged out user who tries to access the Chat page gets
     * redirected to the Login page
     *
     * @return void
     */
    public function test_redirecting_to_login_page()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/home')
                    ->assertPathIs('/laravel/Chatroom/public/login');
        });
    }
}

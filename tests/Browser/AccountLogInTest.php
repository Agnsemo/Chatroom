<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class AccountLogInTest extends DuskTestCase
{
    // Checks if a user can log into an existing account
    public function test_logging_in()
    {
        $this->user = $user = factory(User::class)->create();

        $this->browse(function ($browser) use ($user) {

            $browser->visit('/login')
                ->keys('#email', $user->email)
                ->keys('#password', 'secret')
                ->press('Login')
                ->assertPathIs('/laravel/Chatroom/public/home');
            
            $this->user->delete();
        });
    }
}

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
        $user = factory(User::class)->create();

        $this->browse(function (Browser $browser) use ($user) {
            $browser->visit('/login')
                ->keys('#email', $user->email)
                ->keys('#password', 'secret')
                ->press('Log in')
                ->assertPathIs('/laravel/Chatroom/public/home');
            
            $user->delete();
        });
    }
}
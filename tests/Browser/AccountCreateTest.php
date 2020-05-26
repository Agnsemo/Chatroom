<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Support\Facades\DB;

class AccountCreateTest extends DuskTestCase
{
    // Checks if a user can create an account
    public function test_creating_account()
    {        
        $this->browse(function (Browser $browser) {
            $browser->visit('/register')
                    ->keys('#name', 'test')
                    ->keys('#email', 'demo@example.com')
                    ->keys('#password', '123456')
                    ->keys('#password-confirm', '123456')
                    ->press('Register')
                    ->assertPathIs('/laravel/Chatroom/public/home');
        });
        
        $this->assertDatabaseHas('users', [
            'name' => 'test',
            'email' => 'demo@example.com',
        ]);
        
        $user = User::where('email','demo@example.com');
        $user->delete();
    }
}

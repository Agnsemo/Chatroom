<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\WithFaker;
use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class AccountCreateTest extends DuskTestCase
{
    use withFaker;
    
    // Checks if a user can create an account
    public function test_creating_account()
    {    
        $name=$this->faker->firstName;
        $email=$this->faker->email;
        $passw=$this->faker->password;
        
        $this->browse(function (Browser $browser) use ($name, $email, $passw) {
            $browser->visit('/register')
                    ->keys('#name', $name)
                    ->keys('#email', $email)
                    ->keys('#password', $passw)
                    ->keys('#password-confirm', $passw)
                    ->press('Register')
                    ->assertPathIs('/laravel/Chatroom/public/home');
        });
        
        $this->assertDatabaseHas('users', [
            'name' => $name,
            'email' => $email,
        ]);
        
        $user = User::where('email', $email);
        $user->delete();
    }
}

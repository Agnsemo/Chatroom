<?php

namespace Tests\Browser;

use App\User;
use Resources\Assets\Js\Components\ContactList;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class MessageSendTest extends DuskTestCase
{
    // A Dusk test example.
    public function test_sending_message()
    {
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
                    ->visit('/home')
                    ->assertSee('Trio chat')
                    ->clickLink('Chatroom')
                    ->assertPathIs('/laravel/Chatroom/public/home')
                    ;
        });
        
        
        
        
        
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

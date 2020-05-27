<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class MainPageTest extends DuskTestCase
{
    // Checks if the Main page has 'Trio chat' text
    public function test_main_page_text()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->assertSee('Trio chat');
        });
    }
    
    // Checks if the links 'Login' and 'Register' work
    public function test_main_page_links_while_logged_out()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->clickLink('Log in')
                    ->assertPathIs('/laravel/Chatroom/public/login');
        });
        
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->clickLink('Register')
                    ->assertPathIs('/laravel/Chatroom/public/register');
        });
    }
    
    // Checks if the link 'Chatroom' works
    public function test_main_page_link_while_logged_in()
    {                
        $user = factory(User::class)->create();

        $this->browse(function ($browser) use ($user) {
            $browser->loginAs($user->email)
                    ->visit('/')
                    ->assertSee('Trio chat')
                    ->clickLink('Chatroom')
                    ->assertPathIs('/laravel/Chatroom/public/home');
            
            $user->delete();
        });
    }
}

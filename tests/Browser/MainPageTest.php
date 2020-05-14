<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class MainPageTest extends DuskTestCase
{
    /**
     * Checks if the Main page has 'Trio chat' text
     *
     * @return
     */
    public function test_main_page_text()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->assertSee('Trio chat');
        });
    }
    
    /**
     * Checks if the links 'Login' and 'Register' work
     *
     * @return
     */
    public function test_main_page_links_while_logged_out()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->clickLink('Login')
                    ->assertPathIs('/laravel/Chatroom/public/login');
        });
        
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->clickLink('Register')
                    ->assertPathIs('/laravel/Chatroom/public/register');
        });
    }
    
    /**
     * Checks if the link 'Chatroom' works
     *
     * @return
     */
    public function test_main_page_link_while_logged_in()
    {
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
                    ->visit('/')
                    ->assertSee('Trio chat')
                    ->clickLink('Chatroom')
                    ->assertPathIs('/laravel/Chatroom/public/home');
        });
    }
}

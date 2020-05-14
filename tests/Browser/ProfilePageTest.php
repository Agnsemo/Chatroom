<?php

namespace Tests\Browser;

use App\User;
use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ProfilePageTest extends DuskTestCase
{
    /**
     * Checks if a logged out user who tries to access the Profile page gets
     * redirected to the Login page
     *
     * @return void
     */
    public function test_redirecting_to_login_page()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/profile')
                    ->assertPathIs('/laravel/Chatroom/public/login');
        });
    }
    
    /**
     * Checks if a logged in user can see the Profile page
     *
     * @return void
     */
    public function test_seeing_the_profile_page()
    {        
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
                    ->visit('/user/profile')
                    ->assertSee('User profile');
        });
    }
    
    /**
     * Checks if the Profile page links work
     *
     * @return
     */
    public function test_profile_page_links()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/profile')
                    ->clickLink('Upload picture')
                    ->assertPathIs('/laravel/Chatroom/public/user/upload');
        });
        
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/profile')
                    ->clickLink('Edit profile')
                    ->assertPathIs('/laravel/Chatroom/public/user/edit');
        });
        
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/profile')
                    ->clickLink('Change Password')
                    ->assertPathIs('/laravel/Chatroom/public/change-password');
        });
        
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/profile')
                    ->clickLink('Back to chat')
                    ->assertPathIs('/laravel/Chatroom/public/home');
        });
    }
    
    /**
     * Checks if the Upload Picture page links works
     *
     * @return void
     */
    public function test_upload_picture_page_link()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/upload')
                    ->clickLink('Back to profile')
                    ->assertPathIs('/laravel/Chatroom/public/user/profile');
        });
    }
    
    /**
     * Checks if the Upload Picture page links works
     *
     * @return void
     */
    public function test_edit_profile_page_link()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/user/edit')
                    ->clickLink('Back to profile')
                    ->assertPathIs('/laravel/Chatroom/public/user/profile');
        });
    }
    
    /**
     * Checks if the Upload Picture page links works
     *
     * @return void
     */
    public function test_change_password_page_link()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/change-password')
                    ->clickLink('Back to profile')
                    ->assertPathIs('/laravel/Chatroom/public/user/profile');
        });
    }
}

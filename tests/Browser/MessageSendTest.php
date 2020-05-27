<?php

namespace Tests\Browser;

use App\User;
use App\Message;
use App\Events\NewMessage;
use Tests\DuskTestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class MessageSendTest extends DuskTestCase
{
    // Checks if a created message shows up in the database
    public function test_sending_message()
    {
        $user = factory(User::class)->create();
        $userReceiver = factory(User::class)->create();
        
        $message = Message::create([
            'from' => $user->id,
            'to' => $userReceiver->id,
            'text' => 'test message'
        ]);
            
        broadcast(new NewMessage($message));
        
        $this->assertDatabaseHas('messages', [
            'from' => $user->id,
            'to' => $userReceiver->id,
            'text' => 'test message'
        ]);
        
        $userReceiver->delete();
        $user->delete();
        $message->delete();
    }
}

import type { Metadata } from 'next'
import './globals.css'

export const metadata: Metadata = {
  title: 'AICodeRally Documentation',
  description: 'Official documentation for AICodeRally - AI-native platform for building intelligent applications',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className="min-h-screen bg-white">
        <div className="max-w-5xl mx-auto px-4 py-8">
          <header className="mb-12">
            <h1 className="text-3xl font-bold mb-2">AICodeRally Documentation</h1>
            <nav className="flex gap-4 text-sm text-gray-600">
              <a href="/" className="hover:text-gray-900">Home</a>
              <a href="/getting-started" className="hover:text-gray-900">Getting Started</a>
              <a href="/platform" className="hover:text-gray-900">Platform</a>
              <a href="/deployment" className="hover:text-gray-900">Deployment</a>
            </nav>
          </header>
          <main className="prose prose-lg max-w-none">
            {children}
          </main>
        </div>
      </body>
    </html>
  )
}
